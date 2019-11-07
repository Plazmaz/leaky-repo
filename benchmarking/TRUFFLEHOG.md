Tool: https://github.com/dxa4481/truffleHog  
Command Used: `trufflehog --regex https://github.com/Plazmaz/leaky-repo.git`  
Total finds: 22/44  
False Positives: 0  

File Name                                       |  Found? (0 = no, 1 = yes) |
------------------------------------------------|---------------------------|
.bash_profile                                   | 1
.bashrc                                         | 1
.docker/.dockercfg                              | 1
.docker/config.json                             | 1
.mozilla/firefox/logins.json                    | 1
.ssh/id_rsa                                     | 1
.ssh/id_rsa.pub                                 | 1
cloud/.credentials                              | 1
cloud/.s3cfg                                    | 1
cloud/.tugboat                                  | 1
cloud/heroku.json                               | 1
db/dump.sql                                     | 1
db/mongoid.yml                                  | 1
etc/shadow                                      | 1
filezilla/recentservers.xml                     | 1
high-entropy-misc.txt                           | 1
misc-keys/cert-key.pem                          | 1
misc-keys/putty-example.ppk                     | 1 
proftpdpasswd                                   | 1
web/ruby/config/master.key                      | 1
web/ruby/secrets.yml                            | 1
web/var/www/.env                                | 1 
.npmrc                                          | 0
web/var/www/public_html/wp-config.php           | 0
web/var/www/public_html/.htpasswd               | 0
.git-credentials                                | 0
db/robomongo.json                               | 0
web/js/salesforce.js                            | 0
.netrc                                          | 0
hub                                             | 0
filezilla/filezilla.xml                         | 0
config                                          | 0
db/.pgpass                                      | 0
ventrilo_srv.ini                                | 0
web/var/www/public_html/config.php              | 0
db/dbeaver-data-sources.xml                     | 0
.esmtprc                                        | 0
web/django/settings.py                          | 0
deployment-config.json                          | 0
.ftpconfig                                      | 0
.remote-sync.json                               | 0
.vscode/sftp.json                               | 0
sftp-config.json                                | 0
.idea/WebServers.xml                            | 0