" fzf
Plug 'junegunn/fzf.vim'

" Path to bin
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  let height = float2nr(&lines - (&lines * 3 / 10))
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)
  let row = float2nr((&lines - height) / 2)
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal'
  \ }
  call nvim_open_win(buf, v:true, opts)
endfunction

" Keybindings
nmap <Leader>,, :Files<CR>
nmap <Leader>,. :GFiles<CR>
nmap <Leader>,g :GFiles?<CR>
nmap <Leader>,/ :Ag<CR>
nmap <Leader>,b :Buffers<CR>
nmap <Leader>,m :Marks<CR>
nmap <Leader>,c :Commits<CR>
nmap <Leader>,w :Windows<CR>
nmap <Leader>,l :Lines<CR>

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" Reverse `Lines`
command! -bang -nargs=* Lines call fzf#vim#lines(<q-args>, {'options': '--reverse'}, <bang>0)

" Options for `Ag`
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {
  \ 'options': [
    \ '--exact',
    \ '--color',
      \ 'bg:'.g:material_colorscheme_map.gray1000.
      \ ',hl:'.g:material_colorscheme_map.blue.
      \ ',hl+:'.g:material_colorscheme_map.cyan
  \ ]
\ },
\ <bang>0)

" Colors
let g:fzf_colors = {
  \ 'fg': ['fg', 'Normal'],
  \ 'bg': ['fg', 'Gray1000'],
  \ 'fg+': ['fg', 'Normal'],
  \ 'bg+': ['fg', 'Gray1000'],
  \ 'hl': ['fg', 'Yellow'],
  \ 'hl+': ['fg', 'Red'],
  \ 'border': ['fg', 'Gray1000'],
  \ 'gutter': ['fg', 'Gray1000'],
  \ 'info': ['fg', 'Comment'],
  \ 'prompt': ['fg', 'Blue'],
  \ 'preview-fg': ['fg', 'Gray500'],
  \ 'pointer': ['fg', 'Red'],
  \ 'marker': ['fg', 'Orange'],
  \ 'spinner': ['fg', 'Red'],
  \ 'header': ['fg', 'Comment']
\ }
