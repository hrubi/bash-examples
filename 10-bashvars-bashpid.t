in the top-shell, it does not make a difference from $

  $ [[ $BASHPID = $$ ]]

in subshell, it is the pid of the subshell itself, as opposed to $$

  $ parent_bashpid=$BASHPID
  $ (
  >   [[ $BASHPID != $parent_bashpid ]] ||
  >   printf -- "subshell: %s parent: %s\n" "$BASHPID" "$parent_bashpid"
  > )
