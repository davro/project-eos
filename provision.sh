#!/usr/bin/env bash
#
# Project EOS local vagrant installation.
#
# David Stevens <mail.davro@gmail.com> 
#

# Make sure distro is upto date.
sudo apt-get update
#sudo apt-get -y dist-upgrade

# Install base apt requirements for getting EOS and compiling.
sudo apt-get -y install git

# EOSIS clone the repo ready for compiling.
cd ~
git clone https://github.com/EOSIO/eos --recursive

# EOSIS requires user interaction, so echo 1 to script
cd eos
echo 1 | ./eosio_build.sh

