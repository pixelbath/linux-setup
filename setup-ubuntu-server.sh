#!/bin/bash

./symlink.sh

apt update
apt -y upgrade

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt-get install $1
  else
    echo "Already installed: ${1}"
  fi
}

install vim
install htop
install tmux
