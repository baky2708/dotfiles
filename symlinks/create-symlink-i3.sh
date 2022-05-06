#!/bin/sh

#Variables
i3_config="config"
i3_blocks="i3blocks.conf"
path_dotfile=$HOME/Projects/dotfiles/'i3'

#Create backup i3 config
if [ -e "$HOME/.config/i3/" ]; then
	mv $HOME/.config/i3 $HOME/.config/i3-backup
fi

#Create backup i3 blocks
if [ -e "$HOME/.$i3_blocks/" ]; then
	mv $HOME/.$i3_blocks $HOME/.$i3_blocks-backup
fi

#Make i3 folder
mkdir $HOME/.config/i3

#Create symlink i3 config
ln -sv $path_dotfile/$i3_config $HOME/.config/i3/$i3_config

#Create symlink i3 blocks
ln -sv $path_dotfile/$i3_blocks $HOME/.$i3_blocks
