Tool: https://github.com/Yelp/detect-secrets  
Command Used: `detect-secrets scan`  
Files covered: 23/44 (52.27% coverage)  
Total finds: 41/175 (23.43% coverage)  
False Positives: 0  

File Name                              |  Found/Total   | False Positives |
---------------------------------------|----------------|-----------------|
.mozilla/firefox/logins.json           | 6/28 | 0
.bash_profile                          | 4/11 | 0
.bashrc                                | 3/6 | 0
web/ruby/secrets.yml                   | 3/3 | 0
web/var/www/.env                       | 3/10 | 0
cloud/.credentials                     | 2/4 | 0
cloud/heroku.json                      | 2/2 | 0
high-entropy-misc.txt                  | 2/2 | 0
ventrilo_srv.ini                       | 2/2 | 0
.docker/.dockercfg                     | 1/4 | 0
.docker/config.json                    | 1/4 | 0
.ssh/id_rsa                            | 1/1 | 0
cloud/.tugboat                         | 1/3 | 0
db/mongoid.yml                         | 1/1 | 0
misc-keys/cert-key.pem                 | 1/1 | 0
misc-keys/putty-example.ppk            | 1/2 | 0
hub                                    | 1/2 | 0
web/var/www/public_html/config.php     | 1/4 | 0
deployment-config.json                 | 1/4 | 0
.remote-sync.json                      | 1/3 | 0
.vscode/sftp.json                      | 1/4 | 0
sftp-config.json                       | 1/4 | 0
.idea/WebServers.xml                   | 1/2 | 0
.ssh/id_rsa.pub                        | 0/1 | 0
cloud/.s3cfg                           | 0/3 | 0
db/dump.sql                            | 0/10 | 0
etc/shadow                             | 0/1 | 0
filezilla/recentservers.xml            | 0/6 | 0
filezilla/filezilla.xml                | 0/3 | 0
proftpdpasswd                          | 0/1 | 0
web/ruby/config/master.key             | 0/1 | 0
.npmrc                                 | 0/3 | 0
web/var/www/public_html/wp-config.php  | 0/12 | 0
web/var/www/public_html/.htpasswd      | 0/1 | 0
.git-credentials                       | 0/1 | 0
db/robomongo.json                      | 0/7 | 0
web/js/salesforce.js                   | 0/1 | 0
.netrc                                 | 0/2 | 0
config                                 | 0/4 | 0
db/.pgpass                             | 0/1 | 0
db/dbeaver-data-sources.xml            | 0/1 | 0
.esmtprc                               | 0/3 | 0
web/django/settings.py                 | 0/1 | 0
.ftpconfig                             | 0/5 | 0
