#!/bin/bash

echo "==== $0 ===="; date; id; pwd; uname -a

source $HOME/.ghcup/env

#
# beware of the docker cache!
#
git clone https://github.com/scmlab/gcl.git
cd gcl

stack setup                     # will install ghc

stack build --only-dependencies # compile all the dependencies (slow)

rm -fR gcl                      # what we need are in ~/.stack (3GB)
