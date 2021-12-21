#!/bin/sh

#Variables
ranger_config='rc.conf'
path_dotfile=$HOME/Projects/dotfiles/'ranger'
path_ranger_config=$HOME/.config/'ranger'

#Create backup
if [ -e "$path_ranger_config" ]; then
	mv $path_ranger_config $path_ranger_config-backup
fi

#Create symlink of tmux.conf
mkdir $HOME/.config/ranger
ln -sv $path_dotfile/$ranger_config $path_ranger_config/$ranger_config
