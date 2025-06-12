#!/bin/bash

# Update package list and install necessary packages
apt-get update
apt-get install -y wget software-properties-common

wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-12 main" | sudo tee /etc/apt/sources.list.d/llvm.list
apt-get update
apt-get install -y llvm-12 llvm-12-dev llvm-12-tools clang-12


# Clean up
apt-get clean
#rm -rf /var/lib/apt/lists/*