#!/bin/bash

# Update package list and install necessary packages
apt-get update
apt-get install -y python3 python3-pip

# Install any additional dependencies here
# For example, if you need to install a specific Python package:
# pip3 install <package-name>

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*