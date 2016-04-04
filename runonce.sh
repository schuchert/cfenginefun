#!/usr/bin/env bash

NAME=ubuntu_1504.box

if [ ! -f "$NAME" ]; then
  curl -L https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/15.04/ubuntu-15.04-amd64.box --output $NAME
  vagrant box add $NAME ubuntu_1504
fi

vagrant up --provision
vagrant halt
vagrant up

