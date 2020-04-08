#!/bin/bash
#
# Zsh
#

info "Zsh"

install () {
	if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
		warning "Switching Shell to Zsh"
		command -v zsh | sudo tee -a /etc/shells
		chsh -s "$(command -v zsh)"
	fi
}

install

symlink "zshrc" ".zshrc"
