#!/bin/sh

#Variables
polybar_config="config"
path_dotfile=$HOME/Projects/dotfiles/'polybar'

#Create backup i3 config
if [ -e "$HOME/.config/polybar/$polybar_config" ]; then
	mv $HOME/.config/polybar/$polybar_config $HOME/.config/polybar/$polybar-config-bak
fi

#Create symlink i3 config
ln -sv $path_dotfile/$polybar_config $HOME/.config/polybar/$polybar_config
