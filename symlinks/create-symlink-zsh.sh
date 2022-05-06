#!/bin/sh

#Variables
zsh_config='zshrc'
path_dotfile=$HOME/Projects/dotfiles/'zsh'

#Create backup zsh config
if [ -e "$HOME/.config/$alacritty" ]; then
	mv $HOME/.$zsh_config $HOME/.$zsh_config-backup
fi

#Create symlink zsh blocks
ln -sv $path_dotfile/$zsh_config $HOME/.$zsh_config
