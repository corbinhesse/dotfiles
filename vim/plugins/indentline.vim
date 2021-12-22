" indent guide
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lukas-reineke/indent-blankline.nvim'

let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_exclude_filetypes = [
	\'coc-explorer'
	\'gitcommit',
	\'help',
	\'man',
	\'markdown',
	\'vim-plug',
	\'vista',
	\'vista_markdown'
\]

let g:indent_blankline_enabled = v:true
let g:indentLine_char = ''
let g:indent_blankline_space_char_blankline = ' '
let g:indent_blankline_show_trailing_blankline_indent = v:false

let g:indent_blankline_char_highlight_list = ['IndentOne', 'IndentTwo']
let g:indent_blankline_space_char_highlight_list = ['IndentOne', 'IndentTwo']
let g:indent_blankline_space_char_blankline_highlight_list = ['IndentOne', 'IndentTwo']
