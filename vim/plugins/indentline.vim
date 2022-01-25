" indent guide
Plug 'lukas-reineke/indent-blankline.nvim'

let g:indentLine_fileTypeExclude = [
	\'coc-explorer'
	\'gitcommit',
	\'help',
	\'man',
	\'markdown',
	\'vim-plug',
	\'vista',
	\'vista_markdown',
\]

let g:indent_blankline_buftype_exclude = ['terminal']

let g:indent_blankline_enabled = v:true
let g:indentLine_char = ''
let g:indent_blankline_space_char_blankline = ' '
let g:indent_blankline_show_trailing_blankline_indent = v:false

let g:indent_blankline_char_highlight_list = ['IndentOne', 'IndentTwo']
let g:indent_blankline_space_char_highlight_list = ['IndentOne', 'IndentTwo']
let g:indent_blankline_space_char_blankline_highlight_list = ['IndentOne', 'IndentTwo']

nmap <silent><leader>i :IndentBlanklineRefresh <CR>
