$$ expands to current shell PID, not the subshell

  $ current_pid=$$
  $ (
  >   [[ $$ = $current_pid ]] ||
  >   printf -- "subshell: %s current: %s\n" "$$" "$current_pid"
  > )
