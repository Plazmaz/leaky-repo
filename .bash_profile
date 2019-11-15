export PATH=$PATH:/usr/local/bin

# Show git branch name in prompt
source ~/.git-prompt.sh
PS1="\[\033[01;34m\]\w\[\033[31m\]\$(__git_ps1)\[\033[00m\]\$ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export AWS_ACCESS_KEY_ID=yLryKGwcGc3ez9G8YAnjeYMQOc # Informative, can't be used w/o the secret key
export AWS_SECRET_ACCESS_KEY=nAH2VzKrMrRjySLlt8HCdFU3tM2TUuUZgh39NX
export AWS_DEFAULT_REGION='us-west-1' # Broad enough that it doesn't create risk by itself.
export AWS_REGION=$AWS_DEFAULT_REGION
export S3_REGION=$AWS_DEFAULT_REGION
export S3_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export S3_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export S3_BUCKET=dummy_bucket-90i8985p # Informative, could contain sensitive info, but not necessarily.
export RDS_HOST='fake-rds.jfduhij34u80.us-west-1.rds.amazonaws.com' # Informative, unlikely to be abused w/o password or key
export RDS_PASSWORD='dummy-pass'
export HEROKU_API_KEY='sampleHerokuKey'
export HOMEBREW_GITHUB_API_TOKEN='51e61afee2c2667123fc9ed160a0a20b330c8f74'
export SLACK_API_TOKEN='xoxp-858723095049-581481478633-908968721956-f16b85d1f73ef37c02323bf3fd537ea5'
export MLAB_PASS='password123'
export MLAB_URL='ds908452.mlab.com:25928' # Informative, needs pass
export MLAB_DB='dum-231-h92' # Informative, requires access to server or SQLi