#!/bin/sh

#Variables
scripts_config='scripts'
path_dotfile=$HOME/Projects/dotfiles/'scripts'

#Create backup scripts config
if [ -e "$HOME/.local/$scripts_config" ]; then
	mv $HOME/.local/$scripts_config $HOME/.local/$scripts_config-backup
fi

#Create symlink scripts blocks
ln -sv $path_dotfile/ $HOME/.local/$scripts_config
