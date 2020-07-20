" lightline
Plug 'itchyny/lightline.vim'

" Config
let g:lightline = {
  \ 'colorscheme': 'material',
  \ 'component': {
    \ 'filePath': '%{LightlineFilePath()}%<',
    \ 'lineCount': '%L',
    \ 'lineInfo': '%l:%c/%L',
    \ 'modified': '%{LightlineModified()}',
  \ },
  \ 'tab_component_function': {
    \ 'filename': 'LightlineTabName',
  \ },
  \ 'component_function': {
    \ 'gitBranch': 'FugitiveHead',
    \ 'nodeVersion': 'LightlineNode',
    \ 'packageVersion': 'LightlinePackageVersion'
  \ },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ 'tabline': { 'right': [['gitBranch']] },
  \ 'active': {
    \ 'left': [
      \ [ 'modified' ],
      \ [ 'filePath' ],
    \ ],
    \ 'right': [
      \ [ 'lineInfo' ],
    \ ]
  \ },
  \ 'inactive': {
    \ 'left': [
      \ [ 'modified' ],
      \ [ 'filePath' ],
    \ ],
    \ 'right': [
      \ [ 'lineCount' ],
    \ ]
  \ }
\ }

" modified
function! LightlineModified() abort
  let modified = &modified ? ' + ' : ''
  return modified
endfunction

" filePath
function! LightlineFilePath() abort
  let fileName = expand('%:p:.')
  let singleDirectoryFileName = expand('%:p:h:t').'/'.expand('%:t')
  return fileName =~ 'fugitive' ? 'diff:' . singleDirectoryFileName
    \ : fileName =~ '/' ? singleDirectoryFileName
    \ : fileName =~ 'coc-explorer' ? expand('%:p:h:t')
    \ : ('' != fileName ? fileName : '[No Name]')
endfunction

" tabName
function! LightlineTabName(n) abort
  let bufferNumber = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  let fileName = expand('#'.bufferNumber.':p:.')
  let singleDirectory = expand('#'.bufferNumber.':p:h:t')
  let singleDirectoryFileName = expand('#'.bufferNumber.':p:h:t').'/'.expand('#'.bufferNumber.':t')
  return fileName =~ '#FZF' ? 'FZF'
    \ : fileName =~ 'coc-explorer' ? singleDirectory
    \ : fileName =~ '/' ? singleDirectoryFileName
    \ : ('' != fileName ? fileName : '[No Name]')
endfunction
