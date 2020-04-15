let s:save_cpo = &cpoptions
set cpoptions&vim

let s:palette = {}
let s:bg = { 'guibg': g:material_colorscheme_map.gray1000 }

let s:palette.input = s:bg
let s:palette.display = { 'guifg': g:material_colorscheme_map.gray200, 'guibg': g:material_colorscheme_map.black, 'gui': 'none' }
let s:palette.spinner = extend({ 'guifg': g:material_colorscheme_map.caret, 'gui': 'italic'}, s:bg)
let s:palette.search_text = extend({ 'guifg': g:material_colorscheme_map.fg }, s:bg)

let s:palette.preview = s:bg

let s:palette.selected = { 'gui': 'bold' }
let s:palette.current_selection = { 'gui': 'bold' }
let s:palette.matches = { 'guifg': g:material_colorscheme_map.pink, 'guibg': g:material_colorscheme_map.cyan, 'gui': 'italic' }

let s:palette.selected_sign = { 'guifg': g:material_colorscheme_map.caret }
let s:palette.current_selection_sign = { 'guifg': g:material_colorscheme_map.red }

let g:clap#themes#material#palette = s:palette

let &cpoptions = s:save_cpo
unlet s:save_cpo
