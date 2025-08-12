#!/bin/bash

echo "==== $0 ===="
date
id
pwd
uname -a
env


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
echo "nvm version: $(nvm --version)"

nvm install 24
nvm use 24
