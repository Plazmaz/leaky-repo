Tool: https://github.com/dxa4481/truffleHog  
Command Used: `trufflehog --json --regex .`  
Files covered: 23/44 (52.27% coverage)  
Total finds: 40/175 (22.86% coverage)  
False Positives: 43  

File Name                              |  Found/Total   | False Positives |
---------------------------------------|----------------|-----------------|
misc-keys/cert-key.pem                 | 25/1 | 24
misc-keys/putty-example.ppk            | 21/2 | 19
db/dump.sql                            | 8/10 | 0
web/ruby/secrets.yml                   | 3/3 | 0
.docker/.dockercfg                     | 2/4 | 0
.docker/config.json                    | 2/4 | 0
.mozilla/firefox/logins.json           | 2/28 | 0
cloud/.credentials                     | 2/4 | 0
cloud/.tugboat                         | 2/3 | 0
filezilla/recentservers.xml            | 2/6 | 0
high-entropy-misc.txt                  | 2/2 | 0
.bash_profile                          | 1/11 | 0
.bashrc                                | 1/6 | 0
.ssh/id_rsa                            | 1/1 | 0
.ssh/id_rsa.pub                        | 1/1 | 0
cloud/.s3cfg                           | 1/3 | 0
cloud/heroku.json                      | 1/2 | 0
db/mongoid.yml                         | 1/1 | 0
etc/shadow                             | 1/1 | 0
proftpdpasswd                          | 1/1 | 0
web/ruby/config/master.key             | 1/1 | 0
web/var/www/.env                       | 1/10 | 0
hub                                    | 1/2 | 0
filezilla/filezilla.xml                | 0/3 | 0
.npmrc                                 | 0/3 | 0
web/var/www/public_html/wp-config.php  | 0/12 | 0
web/var/www/public_html/.htpasswd      | 0/1 | 0
.git-credentials                       | 0/1 | 0
db/robomongo.json                      | 0/7 | 0
web/js/salesforce.js                   | 0/1 | 0
.netrc                                 | 0/2 | 0
config                                 | 0/4 | 0
db/.pgpass                             | 0/1 | 0
ventrilo_srv.ini                       | 0/2 | 0
web/var/www/public_html/config.php     | 0/4 | 0
db/dbeaver-data-sources.xml            | 0/1 | 0
.esmtprc                               | 0/3 | 0
web/django/settings.py                 | 0/1 | 0
deployment-config.json                 | 0/4 | 0
.ftpconfig                             | 0/5 | 0
.remote-sync.json                      | 0/3 | 0
.vscode/sftp.json                      | 0/4 | 0
sftp-config.json                       | 0/4 | 0
.idea/WebServers.xml                   | 0/2 | 0
