" General

" Compatibility
set nocompatible
" Indentation and plugin
filetype plugin indent on

" Autoload file changed outside of Vim
set autoread

" Disable backup files
set nobackup
set nowb
set noswapfile

" Undo directory
set undodir=~/.vim/undo//
set undofile

" Complete menu
set completeopt=menuone,menu,longest

" WildMode
set wildoptions=tagfile
set wildmode=full,full

" Mouse in Normal & Visual Mode
set mouse=nv

" Update time
set updatetime=0

" Shell
set shell=/bin/bash
" set shell=/usr/local/bin/zsh
