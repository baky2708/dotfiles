#!/bin/sh

#Variables
nvim_config='nvim'
path_dotfile=$HOME/Projects/dotfiles/'nvim'

#Create backup nvim config
if [ -e "$HOME/.config/$nvim_config" ]; then
	mv $HOME/.config/$nvim_config $HOME/.config/$nvim_config-backup
fi

#Create symlink nvim blocks
ln -sv $path_dotfile/ $HOME/.config/$nvim_config
