" Visual

" Syntax
syntax enable
set termguicolors

" Copy indentation from previous line
set autoindent

" Expand tabs to spaces
set noexpandtab

" Tabs equal two spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Hidden characters
set list
set listchars=tab:→\ ,trail:-,nbsp:+,space:⋅
" set listchars=tab:▏\ ,trail:-,nbsp:+,space:⋅

" Do not wrap long horizontal lines
set linebreak
set nowrap

" Ignore case type when searching
set ignorecase
" Override case if using uppercase
set smartcase

" Linenumbers
set number norelativenumber
set numberwidth=1

" Cursor line
set cursorline

" Hide last message when in insert, replace, or visual mode
set noshowmode

" Short Message
" I - Hide intro message
" W - Hide `written` message when saving
" c	- don't give |ins-completion-menu| messages.
" F	- don't give file info
set shortmess=IWacFt

" Show All Characters
set conceallevel=0

" Show Sign Column (git, lint)
set signcolumn=yes:1

" Window Management
set splitbelow
set splitright

" Fold Method
set foldopen-=hor

" Window Sizes
set winminwidth=6
set winwidth=6
set winminheight=0
set winblend=0

" Tabline
set showtabline=2

" Scroll
set scrolloff=1
set sidescrolloff=5
