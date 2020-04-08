" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Visual signs
let g:coc_status_error_sign = '×'
let g:coc_status_warning_sign = '!'

" Extensions
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-explorer',
  \ 'coc-git',
  \ 'coc-jest',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-smartf',
  \ 'coc-snippets',
  \ 'coc-sql',
  \ 'coc-tailwindcss',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-yaml',
  \ 'coc-yank',
\ ]

" Keybindings

" coc-lists
nmap <silent><Leader><Space> :CocList<CR>

" coc-explorer
nmap <silent><Leader>e :CocCommand explorer --toggle<CR>

" coc-smartf
nmap s <Plug>(coc-smartf-forward)
nmap S <Plug>(coc-smartf-backward)

" <CR> to trigger expansion in list
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion window
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
nmap <silent><leader>f :Format<CR>
" Use `:FormatSelected` to format current buffer
command! -range FormatSelected :call CocAction('formatSelected', visualmode())
vmap <silent><leader>f :FormatSelected<CR>

" Run Jest for current project
command! -nargs=0 Jest :call CocAction('runCommand', 'jest.projectTest')
" Run Jest for current file
command! -nargs=0 JestFile :call CocAction('runCommand', 'jest.fileTest', ['%'])

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" multiple cursors
nmap <expr> <silent> <C-c> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
xmap <silent> <C-c> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

" git
nmap <silent>[c <Plug>(coc-git-prevchunk)
nmap <silent>]c <Plug>(coc-git-nextchunk)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Highlights
hi link CocErrorLine DiffDelete
hi link CocErrorSign Red
hi link CocHintSign Blue
hi link CocCodeLens LineNr
hi link CocCursorRange DiffText
