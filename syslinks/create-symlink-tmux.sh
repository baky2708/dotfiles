#!/bin/sh

#Variables
tmux_config="tmux.conf"
path_dotfile=$HOME/Projects/dotfiles/'tmux'

#Create backup
if [ -e "$HOME/.$tmux_config" ]; then
	mv $HOME/.$tmux_config $HOME/.$tmux_config-backup
fi

#Create symlink of tmux.conf
ln -sv $path_dotfile/$tmux_config $HOME/.$tmux_config
