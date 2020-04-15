autoload colors && colors

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info() {
  ref=$($git symbolic-ref HEAD 2>/dev/null) || return
  echo "${ref#refs/heads/}"
}

unpushed() {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push() {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo " %{$fg_bold[magenta]%}▲%{$reset_color%}"
  fi
}

directory_name() {
  echo "%{$fg_bold[blue]%}%2~%{$reset_color%}"
}

export PROMPT=$'\n$(directory_name) $(git_dirty)$(need_push)\n%{$fg_bold[black]%}▸ %{$reset_color%}'

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
