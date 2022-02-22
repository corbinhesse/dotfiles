#!/bin/bash

install () {
	info "Homebrew"
	if ! [ "$(which brew)" ]; then
		warning "Installing Homebrew"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	fi
	brew bundle --file="$(dirname $0)"/Brewfile
	brew analytics off
}

install
