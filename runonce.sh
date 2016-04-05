#!/usr/bin/env bash

NAME=ubuntu_1504
BOX=$NAME.box

if [ ! -f "$BOX" ]; then
	  curl -L https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/15.04/ubuntu-15.04-amd64.box --output $BOX
fi

vagrant box list 2>/dev/null | grep -q "\b${NAME}\b" || { 
  vagrant box add $NAME $BOX
}

vagrant up --provision
vagrant halt
vagrant up
