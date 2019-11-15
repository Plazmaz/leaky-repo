# Leaky Repo 🚿

## Table of contents
* [FAQ](#FAQ)
* [Secrets](#Secrets)
* [Results](#Results)
* [Changelog](#Changelog)
* [Contact](#Contact)

# FAQ
## What is this?
This is a repo full of mistakes. I will include several of the secrets I've seen commonly leaking from real projects. It will be useful for testing scanning tools such as [github-dorks](https://github.com/techgaun/github-dorks) and [truffleHog](https://github.com/dxa4481/truffleHog).

## Where did you get these?
It's worth noting that none of the secrets here are real. They are all things I've seen before, but I've randomized or redacted all of the actual data. The vast majority of secrets will likely be taken from patterns created for github-dorks, which are primarily taken from config files for popular services. I've also worked on several scanning tools in the past. Most notably, github-dorks, [PasteHunter](https://github.com/kevthehermit/PasteHunter), [github-dorks](https://github.com/techgaun/github-dorks), as well as [GHScraper](https://github.com/Plazmaz/GHScraper), and several other non-public or unreleased scanners. Essentially, I've seen a **lot** of whoopsies on git, which will also be included.

## Why did you make this repo?
This repo was made to serve as a benchmark for secrets scanners. Repo scanning tools have varying levels of coverage, and so far the go-to option has been "slam a bunch together". This repo is also partially to test my theory that this technique still isn't really sufficient. Regardless, you can't _just_ scan for high entropy, and you can't _just_ scan for patterns, you need to do both!

## How can I avoid uploading these secrets?
I've written a blog post on [Why We Fail at Keeping Git Secrets](https://dylankatz.com/Why-We-Fail-At-Keeping-Git-Secrets/?utm_source=leaky_repo). If you truly want to keep your secrets safe, seperate them from your repo. If that's a config file, that's fine. If it's a secrets management/storage system, that's even better. As long as you can stop git from adding that information by default, you're unlikely to hit any problems.

# Secrets
Filename                                           | Description
------------------------------------------------|--------------------------------------------------------------------------
.npmrc                                          | NPM registry authentication data
.dockercfg                                      | Docker registry authentication data
misc-keys/cert-key.pem                          | PEM Private key
misc-keys/putty-example.ppk                     | PuTTYgen private key
.ssh/id_rsa                                     | Private ssh key
.ssh/id_rsa.pub                                 | Public ssh key (might still not be ideal)
db/dump.sql                                     | MySQL dump w/ bcrypt hashes
cloud/.credentials                              | S3 Credentials file
cloud/.s3cfg                                    | S3 Credentials file
cloud/.tugboat                                  | Digital Ocean tugboat config
cloud/heroku.json                               | Heroku config
web/var/www/public_html/wp-config.php           | WordPress config file
web/var/www/public_html/.htpasswd               | htpasswd file
web/var/www/public_html/config.php              | PHP application config file
web/var/www/.env                                | Laravel .env (CI, various ruby based frameworks too)
.git-credentials                                | Git credentials store
.bashrc                                         | .bashrc file (contains several secrets as environment variables)
.bash_profile                                   | .bash_profile file (contains several secrets as environment variables)
db/robomongo.json                               | Mongolab credentials for robomongo
db/mongoid.yml                                  | Mongoid config file
web/js/salesforce.js                            | Salesforce credentials in a nodejs project
.netrc                                          | netrc  with SMTP credentials
hub                                             | Hub config that stores github tokens
filezilla/filezilla.xml                         | Filezilla config file
filezilla/recentservers.xml                     | Filezilla recent servers file
.docker/config.json                             | Docker registry authentication file
config                                          | IRC config
db/.pgpass                                      | PostgreSQL file which contains passwords
/proftpdpasswd                                  | Usernames and passwords of proftpd created by cpanel
ventrilo_srv.ini                                | Ventrilo configuration
etc/shadow                                      | Linux /etc/shadow file
db/dbeaver-data-sources.xml                     | DBeaver config containing MySQL Credentials
/.esmtprc                                       | esmtp configuration
.mozilla/firefox/logins.json                    | Firefox saved password collection (can be decrypted using keys4.db)
web/django/settings.py                          | Django setup.py, contains valid secret key
web/ruby/secrets.yml                            | Ruby on rails secrets.yml file (contains passwords)
ruby/config/master.key                          | Rails master key (used for decrypting `credentials.yml.enc` for Rails 5.2+)
deployment-config.json                          | Created by sftp-deployment for Atom, contains server details and credentials
.ftpconfig                                      | Created by remote-ssh for Atom, contains SFTP/SSH server details and credentials
.remote-sync.json                               | Created by remote-sync for Atom, contains FTP and/or SCP/SFTP/SSH server details and credentials
.vscode/sftp.json                               | Created by vscode-sftp for VSCode, contains SFTP/SSH server details and credentials
sftp-config.json                       | Created by SFTP for Sublime Text, contains FTP/FTPS or SFTP/SSH server details and credentials
.idea/WebServers.xml                         | Created by Jetbrains IDEs, contains webserver credentials with encoded passwords ([not encrypted!](https://intellij-support.jetbrains.com/hc/en-us/community/posts/207074025/comments/207034775))
high-entropy-misc.txt                          | Misc high entropy strings (HES1 is plain, HES2 is base64)

# Results
We've tested a few tools and generated metrics for it. You can see how the tools tested so far stack up in [Benchmarking](https://github.com/Plazmaz/leaky-repo/tree/master/.leaky-meta/benchmarking)  
If there's a tool you'd like tested, please file an issue with details on it or create a PR. We are focused primarily on command-line based tools, but are also happy to accept results from web or GUI-based tools, as long as you include the full results and details about the tool.

# Changelog
You can see recent changes made in our [CHANGELOG.md file](https://github.com/Plazmaz/leaky-repo/blob/master/.leaky-meta/CHANGELOG.md) or under [Releases](https://github.com/Plazmaz/leaky-repo/releases). We use semantic versioning for releases.

# Contact
Got a question? Found something worth adding?   
[File an issue](https://github.com/Plazmaz/leaky-repo/issues)  
Have another reason to contact me? You can find me on Twitter:  
[@Plazmaz](https://twitter.com/Plazmaz)


It's also worth noting that many of the original patterns used to find the filenames and examples of several secrets came from github-dorks, which is under tha [Apache 2.0 License](https://github.com/techgaun/github-dorks/blob/master/LICENSE). Also, for the sake of full disclosure, I am a maintainer on that project.