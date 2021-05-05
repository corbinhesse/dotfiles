set --export CLICOLOR true
set --export EDITOR 'nvim'
set --export DOTFILES "$HOME/.dotfiles"
set --export PATH "$PATH:$DOTFILES/bin"
set --export PATH "$PATH:/usr/local/sbin"
set --export PATH "$PATH:/usr/local/bin"
set --export PATH "$PATH:/usr/local/opt/mysql@5.7/bin"
set --export BAT_THEME 'material'

# Application Variables
set --export RIPGREP_CONFIG_PATH "$HOME/.ripgreprc"
set --export TCELL_TRUECOLOR disable # lab ci view

# Remove greeting
set fish_greeting

# Vim keybindings
set fish_key_bindings fish_vi_key_bindings

# Custom colors
set -u fish_color_teal '#4DB6AC' # teal
set -u fish_color_brown '#8D6E63' # brown

# Color variables
set -u fish_color_autosuggestion brblack
set -u fish_color_cancel red # '^C'
set -u fish_color_command normal # command
set -u fish_color_comment brblack
set -u fish_color_cwd magenta # current working directory
set -u fish_color_end magenta # separators
set -u fish_color_error red # error
set -u fish_color_escape magenta
set -u fish_color_normal normal # command line
set -u fish_color_operator magenta # '~ *'
set -u fish_color_param normal # flags
set -u fish_color_quote green # strings
set -u fish_color_redirection cyan # '> <'
set -u fish_color_search_match --background=brblack # search history
set -u fish_color_user yellow
set -u fish_color_valid_path

# Pager colors
set -u fish_pager_color_completion normal # results
set -u fish_pager_color_description brblack # results
set -u fish_pager_color_prefix red # searched prefix
set -u fish_pager_color_progress brblack # more pager
set -u fish_pager_color_selected_background --background=brblack # highlighted result

# grc
set grc_completion (brew --prefix)/etc/grc.fish
if test -e $grc_completion
  source $grc_completion
end

# fnm
if test (which fnm)
  fnm env --multi | source
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true
