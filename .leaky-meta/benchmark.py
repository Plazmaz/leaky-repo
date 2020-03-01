# For py2 compat
from __future__ import division
import os
import csv
import json
import subprocess
from io import StringIO
from subprocess import PIPE

def get_secret_counts():
    '''
    A generator for secrets in default files.
    :returns: filepath, risk_count, informative_count
    '''
    raw_csv = None
    with open('secrets.csv') as f:
        raw_csv = [l for l in f.readlines() 
                            if len(l.strip()) != 0 and not l.startswith('#')]
    # Parse array to CSV
    csv_reader = csv.reader(raw_csv, delimiter=',')
    for row in csv_reader:
        # Yield str, int, int.
        yield [row[0], int(row[1]), int(row[2])]

def get_command_stdout(cmd, cwd='..'):
    os.path.abspath(cwd)
    p = subprocess.Popen(cmd, stdout=PIPE, stderr=PIPE, cwd=cwd)
    stdout, stderr = p.communicate()
    return stdout.decode('utf-8'), stderr.decode('utf-8') if stderr else None

def get_secret_count_detectsecrets():
    finds = {}
    cmd = ['detect-secrets', 'scan']
    stdout, _ = get_command_stdout(cmd)
    results = json.loads(stdout).get('results')
    for key in results.keys():
        finds[key] = len(results.get(key))

    return cmd, finds

def get_secret_count_gitleaks():
    finds = {}
    cmd = ['gitleaks', '--config=.leaky-meta/gitleaks-config.toml', '--report=.leaky-meta/gitleaks.json', '--repo-path', '.']
    stdout, stderr = get_command_stdout(cmd)
    with open('gitleaks.json') as f:
        data = json.load(f)
    for obj in  data:
        filename = obj.get('file')
        if not filename in finds:
            finds[filename] = 0
        finds[filename] += 1
    
    # Clean up
    os.remove('gitleaks.json')
    return cmd, finds

def get_secret_count_trufflehog():
    finds = {}
    trufflehog_cmd = ['trufflehog', '--json', '--regex', '.']
    stdout, _ = get_command_stdout(trufflehog_cmd)
    for line in stdout.split('\n'):
        if len(line) == 0:
            # Skip empty lines
            continue
        obj = json.loads(line)
        finds[obj.get('path')] = len(obj.get('stringsFound'))

    return trufflehog_cmd, finds

def build_markdown_rows(secrets_function, expected_counts):
    dat = {}
    cmd, secrets = secrets_function()
    for row in expected_counts:
        name = row[0]
        expected = row[1] + row[2]
        if not name in secrets:
            dat[name] = {'name': name, 'found': 0, 'expected': expected, 'false_positives' :0 }
            continue

        found = secrets[name]
        # If found > expected, we have false positives. This will be negative or zero of there's no false positives.
        false_positives = found - expected
        # This will be zero or positive.
        false_positives = max(false_positives, 0)
        dat[name] = {'name': name, 'found': found, 'expected': expected, 'false_positives' :false_positives }
    return cmd, dat

def build_table_header(filename_cols):
    template = 'File Name{}|  Found/Total   | False Positives |\n{}|----------------|-----------------|\n'
    # 9 = len('File Name')
    return template.format(' ' * (filename_cols - 9), '-' * filename_cols)

def build_md_table(secrets_function):
    # {name}{padding}| {found}/{total} |{false positives}
    print_template = '{}{}| {}/{} | {}\n'

    expected_counts = [x for x in get_secret_counts()]
    # Get the max length of a filename, so we can put a column seperator after it
    sep_col = max([len(val[0]) for val in expected_counts]) + 2
    out = build_table_header(sep_col)
    total_files = len(expected_counts)
    
    cmd_used, md_rows = build_markdown_rows(secrets_function, expected_counts)
    md_rows = sorted(md_rows.items(), key=lambda val: -val[1]['found'])
    total_finds = 0
    total_expected = 0
    total_false_positives = 0
    files_covered = 0
    for dat in md_rows:
        obj = dat[1]
        name = obj.get('name')
        found = obj.get('found')
        expected = obj.get('expected')
        false_positives = obj.get('false_positives')

        # Determine right padding for name column
        right_padding = sep_col - len(name)
        right_padding_str = (' ' * right_padding)

        # For metrics we exclude false positives.
        total_finds += found - false_positives
        total_expected += expected
        total_false_positives += false_positives
        if found != 0:
            files_covered += 1

        out += print_template.format(name, right_padding_str, found, expected, false_positives)
    return cmd_used, total_files, files_covered, total_finds, total_expected, total_false_positives, out

def build_md(secrets_function, tool_url):
    header_fmt = 'Tool: {}  ' \
                 '\nCommand Used: `{}`  ' \
                 '\nFiles covered: {}/{} ({}% coverage)  ' \
                 '\nTotal finds: {}/{} ({}% coverage)  ' \
                 '\nFalse Positives: {}  ' \
                 '\n\n{}'
    
    cmd, total_files, files_covered, total_finds, \
     total_expected, false_positives, table = build_md_table(secrets_function)
    # Convert cmd to a string
    cmd = ' '.join(cmd)

    # Get a % coverage value
    file_coverage = (files_covered / total_files) * 100

    find_coverage = (total_finds / total_expected) * 100

    # Sanity!
    file_coverage = round(file_coverage, 2)
    find_coverage = round(find_coverage, 2)
    out = header_fmt.format(tool_url, cmd,
                           files_covered, total_files, file_coverage, 
                           total_finds, total_expected, find_coverage,
                           false_positives, table)
    return out

if __name__ == '__main__':
    detect_secrets = build_md(get_secret_count_detectsecrets, 'https://github.com/Yelp/detect-secrets')
    truffle_hog = build_md(get_secret_count_trufflehog, 'https://github.com/dxa4481/truffleHog')
    gitleaks = build_md(get_secret_count_gitleaks, 'https://github.com/zricethezav/gitleaks')
    with open('benchmarking' + os.path.sep + 'TRUFFLEHOG.md', 'w+') as f:
        f.write(truffle_hog)
    with open('benchmarking' + os.path.sep + 'DETECT-SECRETS.md', 'w+') as f:
        f.write(detect_secrets)
    with open('benchmarking' + os.path.sep + 'GITLEAKS.md', 'w+') as f:
        f.write(gitleaks)
        