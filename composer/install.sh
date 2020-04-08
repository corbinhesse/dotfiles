#!/bin/bash
#
# Composer
#

info "Composer"

symlink "composer.json" "composer.json" "composer"

install () {
  if [ $(which brew) ]; then
    composer global install
  fi
}

install
