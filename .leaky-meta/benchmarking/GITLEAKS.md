Tool: https://github.com/zricethezav/gitleaks  
Command Used: `gitleaks --config=.leaky-meta/gitleaks-config.toml --report=.leaky-meta/gitleaks.json --repo-path .`  
Files covered: 40/44 (90.91% coverage)  
Total finds: 127/175 (72.57% coverage)  
False Positives: 17  

File Name                              |  Found/Total   | False Positives |
---------------------------------------|----------------|-----------------|
web/var/www/.env                       | 14/10 | 4
web/var/www/public_html/wp-config.php  | 14/12 | 2
.mozilla/firefox/logins.json           | 13/28 | 0
.bash_profile                          | 12/11 | 1
db/dump.sql                            | 10/10 | 0
db/robomongo.json                      | 7/7 | 0
.vscode/sftp.json                      | 7/4 | 3
cloud/.credentials                     | 6/4 | 2
web/var/www/public_html/config.php     | 4/4 | 0
.bashrc                                | 3/6 | 0
config                                 | 3/4 | 0
db/dbeaver-data-sources.xml            | 3/1 | 2
.esmtprc                               | 3/3 | 0
deployment-config.json                 | 3/4 | 0
sftp-config.json                       | 3/4 | 0
.idea/WebServers.xml                   | 3/2 | 1
.docker/.dockercfg                     | 2/4 | 0
.docker/config.json                    | 2/4 | 0
cloud/heroku.json                      | 2/2 | 0
filezilla/recentservers.xml            | 2/6 | 0
high-entropy-misc.txt                  | 2/2 | 0
.git-credentials                       | 2/1 | 1
web/js/salesforce.js                   | 2/1 | 1
.netrc                                 | 2/2 | 0
hub                                    | 2/2 | 0
ventrilo_srv.ini                       | 2/2 | 0
.ftpconfig                             | 2/5 | 0
.remote-sync.json                      | 2/3 | 0
.ssh/id_rsa                            | 1/1 | 0
.ssh/id_rsa.pub                        | 1/1 | 0
cloud/.tugboat                         | 1/3 | 0
db/mongoid.yml                         | 1/1 | 0
etc/shadow                             | 1/1 | 0
filezilla/filezilla.xml                | 1/3 | 0
misc-keys/cert-key.pem                 | 1/1 | 0
proftpdpasswd                          | 1/1 | 0
web/ruby/config/master.key             | 1/1 | 0
.npmrc                                 | 1/3 | 0
web/var/www/public_html/.htpasswd      | 1/1 | 0
db/.pgpass                             | 1/1 | 0
cloud/.s3cfg                           | 0/3 | 0
misc-keys/putty-example.ppk            | 0/2 | 0
web/ruby/secrets.yml                   | 0/3 | 0
web/django/settings.py                 | 0/1 | 0
