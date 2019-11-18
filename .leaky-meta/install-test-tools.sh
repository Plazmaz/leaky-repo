#!/bin/bash
if ! type "pip" > /dev/null
then
    echo "Pip and Python are required for installing detect-secrets and truffleHog, but pip was not found!"
    exit 1
fi

mkdir -p ~/.local/bin
if [ ! -f ~/.local/bin/gitleaks ]; then
    wget https://github.com/zricethezav/gitleaks/releases/download/v3.0.1/gitleaks-linux-amd64 -O ~/.local/bin/gitleaks
    chmod +x ~/.local/bin/gitleaks
fi
wget https://raw.githubusercontent.com/zricethezav/gitleaks/master/examples/leaky-repo.toml -O gitleaks-config.toml

pip install detect-secrets truffleHog