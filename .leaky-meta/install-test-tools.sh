#!/bin/bash
if if ! type "pip" > /dev/null; then
    echo "Pip and Python are required for installing detect-secrets and truffleHog, but pip was not found!"
    exit 1
fi

pip install detect-secrets truffleHog