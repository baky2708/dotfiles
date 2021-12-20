#!/bin/bash

file_programs="$HOME/Projects/dotfiles/list-dependences-programs/programs.txt"
file_dependences="$HOME/Projects/dotfiles/list-dependences-programs/base-dependences.txt"

i=0
declare -a list_programs
programs=""

while IFS= read -r line
do
  if [[ ${line:0:1} != "#" && ${line:0:1} != "" ]] ; then
    list_programs[$i]=$line
    ((i++))
  fi
done < "$file_programs"

for program in $list_programs; do
  programs=$program
done

exec sudo pacman -S ${list_programs[@]}

#------------
i=0
declare -a list_dependences
dependences=""

while IFS= read -r line
do
  if [[ ${line:0:1} != "#" && ${line:0:1} != "" ]] ; then
    list_programs[$i]=$line
    ((i++))
  fi
done < "$file_dependences"

for dependence in $list_dependences; do
  dependences=$dependence
done

exec sudo pacman -S ${list_dependences[@]}
