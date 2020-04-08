#!/bin/bash
#
# Install Script
#

sudo -v

export DOTFILES=$(pwd -P)

info () {
    printf "\n\n\033[1;36m$1\033[0m\n"
}
export -f info

warning () {
    printf "\n\033[1;33m$1\033[0m\n"
}
export -f warning

fail () {
    printf "\n\033[1;31m$1\033[0m"
}
export -f fail

success () {
    printf "\n\033[1;32m$1\033[0m\n"
}
export -f success

symlink () {
    local source="$DOTFILES/$(dirname $0)/$1"
    local target_directory="$HOME"

    if [ "$3" ]; then
        target_directory="$HOME/.$3"
    fi

    local target="$target_directory/$2"

    if [ -f "$target" -o -d "$target" -o -L "$target" ]; then
        rm -rf "$target"
        fail "Removed $target"
    fi

    if ! [ -d "$target_directory" ]; then
        mkdir -p "$target_directory"
    fi

    ln -s "$source" "$target"
    success "Linked $source to $target"
}
export -f symlink

find **/ -name install.sh -exec sh {} \;

warning "Installation Complete"
