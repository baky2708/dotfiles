#!/bin/sh

#Add keyboard and touchPad settings

#Variables
dotfile_folder="xorg.conf.d"
keyboard_config="baky"

path_dotfile=$HOME/Projects/dotfiles/xconfig
path_xorg=/etc/X11
path_keyboard_config=$path_dotfile/$keyboard_config
path_keyboard_xorg=/usr/share/X11/xkb/symbols

#Create backup
if [ -e "$path_xorg/$dotfile_folder" ]; then
	sudo mv $path_xorg/$dotfile_folder $path_xorg/$dotfile_folder-backup
fi

#Create symlink of touchPad
sudo ln -sv $path_dotfile/$dotfile_folder $path_xorg/$dotfile_folder

#Create symlink of keyboard
sudo ln -sv $path_keyboard_config $path_keyboard_xorg/$keyboard_config
