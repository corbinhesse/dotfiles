" Keybindings

" Leader
let mapleader=','

" Save/Quit
nnoremap <silent><Leader>w :w<CR>
nnoremap <silent><Leader>q :q<CR>
nnoremap <silent><Leader>b :bd<CR>

" Splits
nnoremap <silent><Leader>v :vs<CR>

" Global Yank
vnoremap <silent><Leader>y "*y

" Split Navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Split Window Placement
nnoremap <Leader>H <C-W>H
nnoremap <Leader>J <C-W>J
nnoremap <Leader>K <C-W>K
nnoremap <Leader>L <C-W>L

" Split Resizing
nnoremap \| <C-W>\|
nnoremap _ <C-W>_
nnoremap + <C-W>=

" Command pagination
cnoremap <C-K> <Up>
cnoremap <C-J> <Down>

" Scroll
set scrolloff=1
set sidescrolloff=5

" Remove Search
nmap <silent><Leader>/ :nohlsearch<CR>

" Exit terminal
tnoremap <C-\> <C-\><C-n>
au TermOpen * setlocal signcolumn=no
