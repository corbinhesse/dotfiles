" HTML
Plug 'mattn/emmet-vim'
let g:emmet_html5 = 1

Plug 'mustache/vim-mustache-handlebars'

Plug 'valloric/matchtagalways'
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'html.handlebars' : 1,
  \ 'javascript' : 1,
  \ 'typescript' : 1,
  \ 'typescriptreact' : 1,
  \ 'typescript.tsx' : 1,
  \ 'xml' : 1,
\ }
