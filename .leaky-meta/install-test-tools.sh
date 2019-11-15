#!/bin/bash
if ! type "pip" > /dev/null
then
    echo "Pip and Python are required for installing detect-secrets and truffleHog, but pip was not found!"
    exit 1
fi

mkdir -p ~/.local/bin
if [ ! -f ~/.local/bin/gitleaks ]; then
    wget https://github.com/zricethezav/gitleaks/releases/download/v2.1.0/gitleaks-linux-amd64 -O ~/.local/bin/gitleaks
    chmod +x ~/.local/bin/gitleaks
fi

pip install detect-secrets truffleHog