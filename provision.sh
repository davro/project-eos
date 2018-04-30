#!/usr/bin/env bash
#
# TODO Add dependencies for EOS build into apt-get install commands
#
# Untested script
#

sudo apt-get update
sudo apt-get -y install git

cd ~
git clone https://github.com/EOSIO/eos --recursive

cd eos

./eosio_build.sh


