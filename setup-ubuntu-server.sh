#!/bin/bash

chmod +x ./symlink.sh
./symlink.sh

apt update
apt -y upgrade

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    apt-get install $1
    echo "Install ${1}: Installed"
  else
    echo "Install ${1}: ok"
  fi
}

install vim
install htop
install tmux

apt clean
apt autoremove
