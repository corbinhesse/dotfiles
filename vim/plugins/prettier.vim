Plug 'prettier/vim-prettier', { 'branch': 'release/1.x', 'do': 'yarn install' }

let g:prettier#autoformat = 0
let g:prettier#config#semi = 'false'

vmap <silent><leader>p :PrettierPartial<CR>
nmap <silent><leader>p :Prettier<CR>
