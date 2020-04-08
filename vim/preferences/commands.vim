" Commands

" Autoload file changed outside of Vim with warning
autocmd FocusGained,BufEnter,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Trim trailing whitespace
if !exists("*TrimWhiteSpace")
  function! TrimWhiteSpace()
    let l:saved_winview = winsaveview()
    :silent! %s/\s\+$//e
    :silent! %s#\($\n\s*\)\+\%$##
    call winrestview(l:saved_winview)
  endfunction
  autocmd BufWritePre * call TrimWhiteSpace()
endif

" Show Syntax
if !exists("*Syntax")
  function! Syntax()
    :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunction
  command! Syntax call Syntax()
endif

" Terminal
if !exists("*Term")
  function! Term()
    :tabnew
    :0tabm
    :terminal
  endfunction
  nnoremap <silent><Leader>t :call Term()<CR>
endif

" Source config file
if !exists("*SourceConfig")
  function! SourceConfig()
    so ~/.config/nvim/init.vim
  endfunction
  command! Config call SourceConfig()
endif
