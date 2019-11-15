# Changelog
## 1.1.1
System/logic changes:
* Added support for benchmarking gitleaks
* Fixed up install and benchmark scripts
* Added secret coverage percentage for benchmarks  

Changes to secrets:  
* Added a password value for robomongo

## 1.1.0
System/logic changes:  
* Added system for automatically generating benchmarks
* Added results for gitrob
* Moved benchmarking, metadata, and source code into `.leaky-meta` folder
* Added CSV with data about secrets
* Categorized secrets into Risk and Informative.
* Added results from Gitrob, provided by [@evilpacket](https://github.com/evilpacket)

Changes to secrets:  
* Added password to `sftp.json` secret
* Added pass to `filezilla/filezilla.xml` (was anonymous login)
* Added realistic value to `hub` file (was just "oauth_token")
* Set redis pass in `web/var/www/.env`
## 1.0.0
* Initial release version
