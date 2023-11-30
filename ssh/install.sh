#!/bin/bash

install () {
	info "SSH"
	if ! [ -f "$HOME/.ssh/id_rsa.pub" ]; then
		warning "Insert a Passphrase"
		ssh-keygen -t ed25519 -C ""
		eval "$(ssh-agent -s)"
		ssh-add --apple-use-keychain ~/.ssh/id_ed25519
	else
		warning "SSH Already Configured"
	fi
}

install

symlink "config" "config" "ssh"
