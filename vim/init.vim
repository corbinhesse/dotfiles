" Preferences
source ~/.vim/preferences/general.vim
source ~/.vim/preferences/keybindings.vim
source ~/.vim/preferences/visual.vim

" Color Scheme
colorscheme material

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
source ~/.vim/plugins/coc.vim
source ~/.vim/plugins/completion.vim
source ~/.vim/plugins/editorconfig.vim
source ~/.vim/plugins/git.vim
source ~/.vim/plugins/graphql.vim
source ~/.vim/plugins/html.vim
source ~/.vim/plugins/indentline.vim
source ~/.vim/plugins/javascript.vim
source ~/.vim/plugins/lightline.vim
source ~/.vim/plugins/prettier.vim
call plug#end()

" Commands
source ~/.vim/preferences/commands.vim
