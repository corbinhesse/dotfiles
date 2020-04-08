#!/bin/bash
#
# Homebrew
#

install () {
  if [ "$(uname -s)" "==" "Darwin" ]; then
    info "Homebrew"
    if ! [ "$(which brew)" ]; then
      warning "Installing Homebrew"
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
    brew bundle --file="$(dirname $0)"/Brewfile
    brew analytics off
  fi
}

install
