test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

git_branch_name() {
  branch=$(git branch --show-current 2>/dev/null) || return
  echo "${branch}"
}

function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $(git_branch_name)
  iterm2_set_user_var nodeVersion "${$(node -v)//v}"
  iterm2_set_user_var npmVersion "$(npm -v)"
}
