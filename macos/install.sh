#!/bin/bash

install () {
	if [ "$(uname -s)" "==" "Darwin" ]; then
		info 'macOS'
		sudo softwareupdate --install -a --verbose --force
	fi

	if ! [ -d "$HOME/Code" ]; then
		mkdir -p "$HOME/Code"
	fi

	if ! [ -f git/gitconfig.local ]; then
		touch ~/.hushlogin
	fi
}

install
