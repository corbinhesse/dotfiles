" Clap
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
let g:clap_disable_bottom_top = 1
let g:clap_disable_run_rooter = 1
let g:clap_enable_icon = 0
let g:clap_insert_mode_only = 1
let g:clap_prompt_format = '%spinner% %provider_id%: '
let g:clap_provider_grep_blink = [0,0]
let g:clap_provider_grep_enable_icon = 0
let g:clap_provider_grep_opts = '--hidden --vimgrep --smart-case'
let g:clap_theme = 'material'
let g:clap_layout = {
  \ 'width': '80%',
  \ 'height': '70%',
  \ 'row': '15%',
  \ 'col': '10%',
  \ 'relative': 'editor',
\ }
let g:clap_fuzzy_match_hl_groups = [
  \ [118, g:material_colorscheme_map.red],
  \ [82, g:material_colorscheme_map.red],
  \ [46, g:material_colorscheme_map.red],
  \ [47, g:material_colorscheme_map.red],
  \ [48, g:material_colorscheme_map.red],
  \ [49, g:material_colorscheme_map.red],
  \ [50, g:material_colorscheme_map.red],
  \ [51, g:material_colorscheme_map.red],
  \ [87, g:material_colorscheme_map.red],
  \ [123, g:material_colorscheme_map.red],
  \ [159, g:material_colorscheme_map.red],
  \ [195, g:material_colorscheme_map.red],
\ ]

" Keybindings
nmap <silent><silent><Leader><Space> :Clap<CR>
nmap <silent><Leader>,, :Clap!! files
  \ ++finder=rg --files --follow --hidden --no-ignore -g '!.git/' -g '!node_modules/'<CR>
nmap <silent><Leader>,. :Clap!! git_files<CR>
nmap <silent><Leader>,g :Clap!! git_diff_files<CR>
nmap <silent><Leader>,/ :Clap!! grep<CR>
nmap <silent><Leader>,b :Clap!! buffers<CR>

autocmd FileType clap_input inoremap <silent> <buffer> <C-n> <C-R>=clap#navigation#linewise('down')<CR>
autocmd FileType clap_input inoremap <silent> <buffer> <C-p> <C-R>=clap#navigation#linewise('up')<CR>
autocmd FileType clap_input inoremap <silent> <buffer> <C-j> <NOP>
autocmd FileType clap_input inoremap <silent> <buffer> <C-k> <NOP>
