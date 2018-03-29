expands to the name of the shell

  $ echo ${0##*/}
  bash


still expands to the name of the shell

  $ bash -c 'echo ${0##*/}'
  bash


expands to a custom string when given

  $ bash -c 'echo "$0"' procname
  procname
