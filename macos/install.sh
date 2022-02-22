#!/bin/bash

install () {
	if [ "$(uname -s)" "==" "Darwin" ]; then
		info 'macOS'
		sudo softwareupdate --install -a --verbose --force
	fi
}

# install
