#!/bin/bash

echo "==== $0 ===="
date
id
pwd
uname -a
env


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source $HOME/.bashrc
nvm install 18
npm use 18
