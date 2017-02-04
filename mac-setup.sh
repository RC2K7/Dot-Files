#!/bin/bash

if [ $(which brew) ]; then
	echo Brew Already Intalled
else
	echo Brew Not Installed
	echo Installing...
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ $(which brew) ]; then
	echo Installing Brew Bottles...

	## Pre-Reqs
	brew install cmake # For youcomplete
	brew install mono # For youcomplete
	
	# Utilities
	brew cask install alfred
	brew cask install google-chrome
	brew cask install keepingyouawake
	brew cask install 1password

	# Android
	brew cask install android-studio genymotion
	brew install carthage

	# GoLang
	brew install go

	# Node
	brew install node

	# PHP
	brew install Homebrew/php/php71

	# Python
	brew cask install Python
	brew cask install python3

	# Virtualization
	brew cask install virtualbox vagrant
	brew cask install dropbox
	brew cask install docker-toolbox

	# Terminal
	brew install tmux
	brew install macvim --with-override-system-vim
fi

# Install Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download all Vim Plugins
vim +PlugInstall +qall

# Install youcomplete Plugin
cd ~/.vim/plugged/youcomplete
./install.py --omnisharp-completer --gocode-completer --tern-completer
