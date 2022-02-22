#!/bin/bash

info "Git"

install () {
	if ! [ -f git/gitconfig.local ]; then
		git_credential="osxkeychain"

		warning 'Insert your name...'
		read -e git_name
		warning 'Insert your Github email...'
		read -e git_email

		sed -e "s/GIT_NAME/$git_name/g" -e "s/GIT_EMAIL/$git_email/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.local.example > git/gitconfig.local
	fi
}

install

symlink "gitconfig" ".gitconfig"
symlink "gitconfig.local" ".gitconfig.local"
symlink "gitignore" ".gitignore"
