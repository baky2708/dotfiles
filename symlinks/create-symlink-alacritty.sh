#!/bin/sh

#Variables
alacritty_config='alacritty.yml'
path_dotfile=$HOME/Projects/dotfiles/'alacritty'

#Create backup i3 config
if [ -e "$HOME/.config/$alacritty" ]; then
	mv $HOME/.config/$alacritty_config $HOME/.config/$alacritty_config-backup
fi

#Create symlink i3 blocks
ln -sv $path_dotfile/$alacritty_config $HOME/.config/$alacritty_config
