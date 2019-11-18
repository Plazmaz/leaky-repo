Tool: https://github.com/zricethezav/gitleaks  
Command Used: `gitleaks --config=.leaky-meta/gitleaks-config.toml --report=.leaky-meta/gitleaks.json --repo-path .`  
Files covered: 34/44 (77.27% coverage)  
Total finds: 133/175 (76.0% coverage)  
False Positives: 47  

File Name                              |  Found/Total   | False Positives |
---------------------------------------|----------------|-----------------|
.bash_profile                          | 24/11 | 13
.mozilla/firefox/logins.json           | 20/28 | 0
web/var/www/public_html/wp-config.php  | 15/12 | 3
.bashrc                                | 15/6 | 9
web/var/www/.env                       | 14/10 | 4
cloud/.credentials                     | 12/4 | 8
db/dump.sql                            | 10/10 | 0
.vscode/sftp.json                      | 7/4 | 3
db/robomongo.json                      | 7/7 | 0
.docker/.dockercfg                     | 6/4 | 2
.docker/config.json                    | 6/4 | 2
web/var/www/public_html/config.php     | 4/4 | 0
sftp-config.json                       | 3/4 | 0
db/dbeaver-data-sources.xml            | 3/1 | 2
deployment-config.json                 | 3/4 | 0
.esmtprc                               | 3/3 | 0
filezilla/recentservers.xml            | 2/6 | 0
ventrilo_srv.ini                       | 2/2 | 0
.remote-sync.json                      | 2/3 | 0
cloud/.s3cfg                           | 2/3 | 0
.ftpconfig                             | 2/5 | 0
cloud/heroku.json                      | 2/2 | 0
.idea/WebServers.xml                   | 2/2 | 0
web/js/salesforce.js                   | 2/1 | 1
hub                                    | 2/2 | 0
.netrc                                 | 2/2 | 0
web/django/settings.py                 | 1/1 | 0
.npmrc                                 | 1/3 | 0
cloud/.tugboat                         | 1/3 | 0
config                                 | 1/4 | 0
filezilla/filezilla.xml                | 1/3 | 0
misc-keys/cert-key.pem                 | 1/1 | 0
.git-credentials                       | 1/1 | 0
db/mongoid.yml                         | 1/1 | 0
web/var/www/public_html/.htpasswd      | 0/1 | 0
.ssh/id_rsa                            | 0/1 | 0
web/ruby/secrets.yml                   | 0/3 | 0
misc-keys/putty-example.ppk            | 0/2 | 0
etc/shadow                             | 0/1 | 0
proftpdpasswd                          | 0/1 | 0
db/.pgpass                             | 0/1 | 0
web/ruby/config/master.key             | 0/1 | 0
.ssh/id_rsa.pub                        | 0/1 | 0
high-entropy-misc.txt                  | 0/2 | 0
