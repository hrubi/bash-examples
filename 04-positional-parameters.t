> 9 has to be in braces

  $ function print_tenth_param {
  >   echo "${10}"
  > }
  $ print_tenth_param a b c d e f g h i j
  j


setting positional params

  $ function set_params {
  >   set -- a
  >   echo $1
  > }
  $ set_params
  a
