# Key bindings
function fish_user_key_bindings
  # All modes
  for mode in insert default visual
    # Accept autosuggestion
    bind -M $mode \ce end-of-line accept-autosuggestion
  end

  # <Control + n|p> Search history
  bind -M insert \cp history-prefix-search-backward
  bind -M insert \cn history-prefix-search-forward
  bind -M default \cp history-search-backward
  bind -M default \cn history-search-forward
end
