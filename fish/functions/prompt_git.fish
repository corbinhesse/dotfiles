# Git branch and status
function prompt_git --description 'Print git branch'
  set -l git_branch (command git rev-parse --abbrev-ref HEAD 2>/dev/null)

  # Exit if no git output
  [ -z $git_branch ]; and return

  set -l git_status
  set -l is_ahead
  set -l is_behind
  set -l index (command git status --porcelain 2>/dev/null -b)
  set -l trimmed_index (string split \n $index | string sub --start 1 --length 2)
  set -l git_dirty_status (command git status --porcelain)

  # Change color if dirty or staged
  if test -n "$git_dirty_status"
    set_color red
    for i in $trimmed_index
      if test (string match '*A*' $i)
        set_color yellow
      end
    end
  else
    set_color green
  end

  # Check whether the branch is ahead
  if test (string match '*ahead*' $index)
    set is_ahead true
  end

  # Check whether the branch is behind
  if test (string match '*behind*' $index)
    set is_behind true
  end

  # Add symbols for refs
  set -l ref_symbols (
    if test "$is_behind" = "true"
      set_color red
      echo -n '↓'
    end
    if test "$is_ahead" = "true"
      set_color $fish_color_teal
      echo -n '↑'
    end
    set_color normal
  )

  echo -n ' '$git_branch$ref_symbols
end
