#!/bin/sh
echo "Create Symlink for Baky Keyboard Layout"
~/Projects/dotfiles/installer/keyboard-layout/create-symlink-keyboard.sh
echo "Swap Control to Caps"
setxkbmap -layout baky-kl -variant real-dvp-intl -option ctrl:swapcaps
