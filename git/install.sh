#!/bin/bash
#
# Git
#

info "Git"

install () {
  if ! [ -f git/gitconfig.local ]; then
    git_credential="cache"
    if [ "$(uname -s)" "==" "Darwin" ]; then
      git_credential="osxkeychain"
    fi
    warning 'Insert your Github name...'
    read -e git_name
    warning 'Insert your Github email...'
    read -e git_email
    sed -e "s/GIT_NAME/$git_name/g" -e "s/GIT_EMAIL/$git_email/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.local.example > git/gitconfig.local
  fi
  if [ $(which git) ]; then
    git submodule init
    git submodule update
  fi
}

install

symlink "gitconfig" ".gitconfig"
symlink "gitconfig.local" ".gitconfig.local"
symlink "gitignore" ".gitignore"
symlink "gitcommit" ".gitcommit"
