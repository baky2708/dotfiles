#!/bin/bash

PACKET_MANAGER='apt install'
OS=`hostnamectl | grep Operating | awk '{print $3}'`

LIST_BASE_ESSENTIALS=(
build-essential
default-jdk
libssl-dev
exuberant-ctags
ncurses-term
ack-grep
silversearcher-ag
fontconfig
imagemagick
libmagickwand-dev
software-properties-common
git
vim-gtk3
curl
)

sudo $PACKET_MANAGER ${LIST_BASE_ESSENTIALS[@]} -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
