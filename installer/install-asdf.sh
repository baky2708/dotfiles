#!/bin/bash

# sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl -y
PACKET_MANAGER='apt install'
OS=`hostnamectl | grep Operating | awk '{print $3}'`

LIST_LANGUAGES=(
python
ruby
rust
golang
nodejs
)

LIST_PLUGINS_LANGUAGES_ASDF=(
'asdf plugin-add python'
'asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git'
'asdf plugin-add rust https://github.com/code-lever/asdf-rust.git'
'asdf plugin-add golang https://github.com/kennyp/asdf-golang.git'
'asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git' 
# nodejs key
'bash -c ${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-previous-release-team-keyring'
)

#install zsh
installZsh(){
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

#install asdf
installAsdf(){
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

	echo . $HOME/.asdf/asdf.sh >> ~/.zshrc
}

#install languages
installPluginsLanguages(){
for i in "${LIST_PLUGINS_LANGUAGES_ASDF[@]}";do
$i
done
}

installLanguages(){
for i in "${LIST_LANGUAGES[@]}";do
	asdf install $i latest
	asdf global $i latest
done
}


# installZsh
# installAsdf
installPluginsLanguages
installLanguages
