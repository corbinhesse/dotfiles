" Commands

" Autoload file changed outside of Vim with warning
augroup autoloadFiles
	autocmd FocusGained,BufEnter,CursorHoldI * if mode() != 'c' | checktime | endif
	autocmd FileChangedShellPost *
		\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
augroup end

" Trim trailing whitespace
if !exists("*TrimWhiteSpace")
	function! TrimWhiteSpace() abort
		let l:saved_winview = winsaveview()
		:silent! %s/\s\+$//e
		:silent! %s#\($\n\s*\)\+\%$##
		call winrestview(l:saved_winview)
	endfunction
	autocmd BufWritePre * call TrimWhiteSpace()
endif

" Show Syntax
if !exists("*Syntax")
	function! Syntax() abort
		:echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
	endfunction
	command! Syntax call Syntax()
endif

" Terminal
if !exists("*Term")
	function! Term() abort
		:tabnew
		:0tabm
		setlocal nonumber
		setlocal shell=/opt/homebrew/bin/fish
		:terminal
	endfunction
	nnoremap <silent><leader>t :call Term()<CR>
endif

" End of Line
let s:eol_enabled = 1
if !exists("*EOL")
	function! EOL() abort
		if s:eol_enabled
			setlocal nofixendofline
			setlocal noendofline
			let s:eol_enabled = 0
		else
			setlocal fixendofline
			setlocal endofline
			let s:eol_enabled = 1
		endif
		" :setlocal fixendofline?
		let s:toggle = eval(s:eol_enabled) ? '' : 'no'
		echo ':setlocal ' . s:toggle . 'endofline'
	endfunction
	nnoremap yoe :call EOL()<CR>
endif

" Source config file
if !exists("*SourceConfig")
	function! SourceConfig() abort
		so ~/.config/nvim/init.vim
	endfunction
	command! Config call SourceConfig()
endif

" Show Syntax
if !exists("*Highlights")
	function! Highlights() abort
		:so $VIMRUNTIME/syntax/hitest.vim
	endfunction
	command! Highlights call Highlights()
endif

augroup SyntaxGroupCmd
	autocmd BufNewFile,BufRead *.fish set filetype=zsh
	autocmd BufNewFile,BufRead *.*rc set filetype=json
	autocmd BufNewFile,BufRead *.nvmrc set filetype=
	autocmd BufNewFile,BufRead gitconfig* set filetype=gitconfig
	autocmd BufNewFile,BufRead npmrc,.npmrc set filetype=npmrc
	autocmd BufNewFile,BufRead *.arc set filetype=arc
augroup END

" Format Amazon Credentials for Fish
if !exists("*FormatAWS")
	function! FormatAWS() abort
		normal! gg
		normal! 0
		:execute "normal! \<C-v>"
		normal! G
		normal! Iset --
		:execute "%s\/=\/\ \/"
		normal! gg
		:execute "normal! V"
		normal! G
    normal! "*y
	endfunction
	command! FormatAWS call FormatAWS()
endif
