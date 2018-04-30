#!/usr/bin/env bash
#
# Project EOS local vagrant installation.
#
# David Stevens <mail.davro@gmail.com> 
#

sudo apt-get update
sudo apt-get -y install git

cd ~
git clone https://github.com/EOSIO/eos --recursive


# EOSIS requires user interaction to run, so ssh into box and run script
# cd eos
# ./eosio_build.sh

