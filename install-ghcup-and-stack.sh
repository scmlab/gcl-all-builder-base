#!/bin/bash

echo "==== $0 ===="
date
id
pwd
uname -a
env


curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 BOOTSTRAP_HASKELL_MINIMAL=1 sh

echo '[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env' >> ~/.bashrc
echo '[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env' >> ~/.zshrc

source $HOME/.ghcup/env

# Originally planned to install only ghcup and stack, with stack managing GHC per project.
# But since HLS cannot be installed via stack, we switched to using ghcup for both GHC and HLS.
# This requires setting system-ghc: true in the project's stack.yaml
# 
# ghc version for the snapshot: https://raw.githubusercontent.com/commercialhaskell/stackage-snapshots/master/lts/18/21.yaml
time ghcup install ghc 8.10.7; ghcup set ghc 8.10.7
ghc --version
# hls version for the ghc: https://github.com/haskell/haskell-language-server/releases
time ghcup install hls 2.2.0.0; ghcup set hls 2.2.0.0
haskell-language-server-wrapper --version
# bravely install the newest version of stack! (?!)
ghcup install stack
stack --version
# Configure stack to use the system GHC and not install GHC automatically.
stack config set system-ghc --global true
stack config set install-ghc --global false