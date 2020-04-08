#!/bin/bash
#
# SSH
#

install () {
  info "SSH"
  if ! [ -f "$HOME/.ssh/id_rsa.pub" ]; then
    warning "Insert a Passphrase"
    ssh-keygen -t rsa -b 4096 -C ""
    eval "$(ssh-agent -s)"
    if [ "$(uname -s)" "==" "Darwin" ]; then
      ssh-add -K ~/.ssh/id_rsa
    else
      ssh-add ~/.ssh/id_rsa
    fi
  else
    warning "SSH Already Configured"
  fi
}

install

symlink "config" "config" "ssh"
