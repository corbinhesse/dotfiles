" General

" Compatibility
set nocompatible
" Indentation and plugin
filetype plugin indent on

" Autoload file changed outside of Vim
set autoread

" Disable swap files
set noswapfile

" Undo directory
set undodir=~/.vim/undo//
set undofile

" Backup
set backup
set backupdir=~/.vim/backup//
" Make a backup before overwriting a file
set writebackup
" Make a copy of the file and overwrite the original one
set backupcopy=yes
" filename@YYYY-MM-DD
au BufWritePre * let &backupext = '@' . strftime("%F")

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
