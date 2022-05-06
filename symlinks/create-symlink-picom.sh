#!/bin/sh

#Variables
picom_config='picom.conf'
path_dotfile=$HOME/Projects/dotfiles/'picom'

#Create backup picom config
if [ -e "$HOME/.config/$picom_config" ]; then
	mv $HOME/.config/$picom_config $HOME/.config/$picom_config-backup
fi

#Create symlink picom blocks
ln -sv $path_dotfile/$picom_config $HOME/.config/$picom_config
