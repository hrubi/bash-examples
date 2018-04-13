$$ expands to current shell PID, not the subshell

  $ parent_pid=$$
  $ (
  >   [[ $$ = $current_pid ]] ||
  >   printf -- "subshell: %s parent: %s\n" "$$" "$parent_pid"
  > )
