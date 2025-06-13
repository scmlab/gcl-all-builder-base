#!/bin/bash

echo "==== $0 ===="; date; id; pwd; uname -a

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 BOOTSTRAP_HASKELL_MINIMAL=1 sh

echo '[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env' >> ~/.bashrc
echo '[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env' >> ~/.zshrc

source $HOME/.ghcup/env
ghcup install stack