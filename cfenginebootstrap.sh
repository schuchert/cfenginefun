#!/usr/bin/env bash

# Make cfengine available to apt-get
add-apt-repository 'deb http://cfengine.com/pub/apt/packages stable main'
wget http://cfengine.com/pub/gpg.key -O /tmp/gpg.key
apt-key add /tmp/gpg.key

apt-get update

apt-get install -y cfengine-community
