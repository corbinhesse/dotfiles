" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Extensions
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-explorer',
  \ 'coc-git',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-sql',
  \ 'coc-tsserver',
  \ 'coc-yaml',
  \ 'coc-yank',
\ ]

" Keybindings

" coc-explorer
nmap <silent><Leader>e :CocCommand explorer --toggle<CR>

" <CR> to trigger expansion in list
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Highlight symbols
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use <c-space> to trigger completion window
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" GoTos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" CocAction
nmap <silent><leader>a :CocAction<CR>

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
nmap <silent><leader>f :Format<CR>
" Use `:FormatSelected` to format current buffer
command! -range FormatSelected :call CocAction('formatSelected', visualmode())
vmap <silent><leader>f :FormatSelected<CR>

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
nmap <silent>[g <Plug>(coc-git-prevchunk)
nmap <silent>]g <Plug>(coc-git-nextchunk)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Snippets
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Code Action
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" CodeLens
nmap <leader>c  <Plug>(coc-codelens-action)

" Highlights
hi link CocErrorLine DiffDelete
hi link CocErrorSign Red
hi link CocHintSign Blue
hi link CocCodeLens LineNr
hi link CocCursorRange DiffDelete
hi link CocHighlightText PmenuThumb
