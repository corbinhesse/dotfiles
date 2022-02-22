#!/bin/bash

install () {
	info "SSH"
	if ! [ -f "$HOME/.ssh/id_rsa.pub" ]; then
		warning "Insert a Passphrase"
		ssh-keygen -t rsa -b 4096 -C ""
		eval "$(ssh-agent -s)"
		ssh-add -K ~/.ssh/id_rsa
	else
		warning "SSH Already Configured"
	fi
}

install

symlink "config" "config" "ssh"
