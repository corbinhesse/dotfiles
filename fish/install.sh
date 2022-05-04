#!/bin/sh

info "fish"

install () {
	if [[ ! $(echo $SHELL) == $(which fish) ]]; then
		warning "Switching Shell to fish"
		command -v fish | sudo tee -a /etc/shells
		chsh -s "$(command -v fish)"
		fish_add_path /opt/homebrew/bin
	fi
}

install

symlink "config.fish" "config.fish" "config/fish"
symlink "conf.d" "conf.d" "config/fish"
symlink "functions" "functions" "config/fish"
