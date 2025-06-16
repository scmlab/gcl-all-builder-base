#!/bin/bash

echo "==== $0 ===="
date
id
pwd
uname -a
env


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
if ! command -v nvm &> /dev/null; then
    echo "ERROR: nvm load failed"
    exit 1
fi
echo "nvm version: $(nvm --version)"

nvm install 18
nvm use 18
