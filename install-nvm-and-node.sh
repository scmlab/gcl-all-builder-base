#!/bin/bash

echo "==== $0 ===="
date
id
pwd
uname -a
env


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

echo "###############000"
cat $HOME/.bashrc | grep nvm
echo "###############111"
source $HOME/.bashrc
echo "###############222"
echo $PATH
echo "###############333"
which nvm
echo "###############444"
nvm install 18
nvm use 18
