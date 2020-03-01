#!/usr/bin/env bash

if ! type "pip" > /dev/null
then
    echo "Pip and Python are required for installing detect-secrets and truffleHog, but pip was not found!"
    exit 1
fi

mkdir -p ~/.local/bin
if ! type "gitleaks" > /dev/null; then
    latest=$(curl -s https://api.github.com/repos/zricethezav/gitleaks/releases/latest |grep "browser_download_url.*linux-amd64" |cut -d : -f 2,3 | tr -d '"')
    wget $latest -O ~/.local/bin/gitleaks
    chmod +x ~/.local/bin/gitleaks
fi
wget https://raw.githubusercontent.com/zricethezav/gitleaks/master/examples/leaky-repo.toml -O gitleaks-config.toml

pip install detect-secrets truffleHog
