#!/bin/sh

#Add keyboard

#Variables
path_dotfiles=$HOME/Projects/dotfiles/installer/keyboard-layout
keyboard_config_file="baky-kl"
path_keyboard_config_file=$path_dotfiles/$keyboard_config_file
path_keyboard_xorg=/usr/share/X11/xkb/symbols

#Create symlink of keyboard
sudo ln -sv $path_keyboard_config_file $path_keyboard_xorg/$keyboard_config_file
