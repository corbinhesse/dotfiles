#!/bin/bash
#
# Vim
#

info "Vim"

install () {
  if ! [ -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    warning "Installing Vim Plug"
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
  if ! [ -d "$HOME/.vim/undo" ]; then
    mkdir -p "$HOME/.vim/undo"
  fi
  if ! [ -d "$HOME/.vim/backup" ]; then
    mkdir -p "$HOME/.vim/backup"
  fi
  pip3 install --user --upgrade pynvim
  python3 -m pip install --user --upgrade pynvim
}

install

symlink "init.vim" "init.vim" "config/nvim"
symlink "init-vscode.vim" "init-vscode.vim" "config/nvim"
symlink "coc-settings.json" "coc-settings.json" "config/nvim"
symlink "autoload" "autoload" "config/nvim"
symlink "colors" "colors" "config/nvim"
symlink "plugins" "plugins" "vim"
symlink "preferences" "preferences" "vim"
symlink "snippets" "snippets" "vim"
symlink "syntax" "syntax" "config/nvim/after"
symlink "ftplugin" "ftplugin" "config/nvim/after"
