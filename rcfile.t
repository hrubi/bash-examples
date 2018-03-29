rcfile - custom commands before dropping into interactive shell
executed in addition to .bashrc etc.

  $ rcfile=$(mktemp)
  $ cat > "$rcfile" <<\EOF
  > echo 'in rcfile'
  > PS1='% '
  > EOF

  $ bash --rcfile "$rcfile" -i <<<"exit"
  in rcfile
  % exit
  exit
