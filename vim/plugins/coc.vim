" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Extensions
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-highlight',
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

" Snippet navigation
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Keybindings
nmap <silent><leader><space> :CocList<CR>
nmap <silent><leader><leader><leader> :CocList files<CR>
nmap <silent><leader><leader>. :CocList gfiles<CR>
nmap <silent><leader><leader>g :CocList --auto-preview gstatus<CR>
nmap <silent><leader><leader>/ :CocList grep<CR>
nmap <silent><leader><leader>b :CocList buffers<CR>
nmap <silent><leader><leader>d :CocList --auto-preview diagnostics<CR>

nmap <silent><leader>ca :CocAction<CR>
xmap <silent><leader>ca <Plug>(coc-codeaction-selected)
nmap <silent><leader>cc :call CocAction('colorPresentation')<CR>
nmap <silent><leader>cg :CocCommand git.chunkInfo<CR>
nmap <silent><leader>ci :call CocActionAsync('organizeImport')<CR>
nmap <silent><leader>cl <Plug>(coc-codelens-action)
nmap <silent><leader>cr <Plug>(coc-refactor)
nmap <silent><leader>cq :CocFix<CR>
xmap <silent><leader>cq :CocFix<CR>
nmap <silent><leader>c/ <Plug>(coc-float-hide)

nmap <silent><leader>e :CocCommand explorer --toggle<CR>

nmap <silent><leader>f :call CocActionAsync('format')<CR>
xmap <silent><leader>f <Plug>(coc-format-selected)

" Completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Navigation
nmap <silent>[c <Plug>(coc-diagnostic-prev)
nmap <silent>]c <Plug>(coc-diagnostic-next)
nmap <silent>[g <Plug>(coc-git-prevchunk)
nmap <silent>]g <Plug>(coc-git-nextchunk)

" Jump locations
let jumpCommand = 'vsplit'
nmap <silent>gd :call CocActionAsync('jumpDefinition', jumpCommand)<CR>
nmap <silent>gl :call CocActionAsync('jumpDeclaration', jumpCommand)<CR>
nmap <silent>gy :call CocAction('jumpTypeDefinition', jumpCommand)<CR>
nmap <silent>gi :call CocAction('jumpImplementation', jumpCommand)<CR>
nmap <silent>gr :call CocAction('jumpReferences', jumpCommand)<CR>

" Select in/around functions
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

" Balance outside/inside
nmap <silent><c-o> <Plug>(coc-range-select)
xmap <silent><c-o> <Plug>(coc-range-select)
nmap <silent><c-i> <Plug>(coc-range-select-backward)
xmap <silent><c-i> <Plug>(coc-range-select-backward)

" multiple cursors
nmap <silent> <C-c> <Plug>(coc-cursors-word)*
xmap <silent> <C-c> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

" Highlight symbols
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlights
" hi link CocErrorLine DiffDelete
hi link CocErrorSign Red
hi link CocHintSign Blue
hi link CocCodeLens LineNr
hi link CocCursorRange DiffDelete
hi link CocHighlightText PmenuThumb
hi link CocGrepLine Gray200
hi link CocSelectedText Red
hi link CocSelectedLine Blue
hi link CocUnderline Underline
