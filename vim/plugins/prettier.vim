" prettier
Plug 'prettier/vim-prettier', { 'branch': 'release/1.x', 'do': 'yarn install' }

let g:prettier#autoformat = 0
let g:prettier#config#semi = 'false'

" Keybindings
vmap <leader>p :PrettierPartial<CR>
nmap <leader>p :Prettier<CR>
