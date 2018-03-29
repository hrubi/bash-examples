reference to a variable

  $ function set_var {
  >   declare -n ref=${1:?}
  >   ref=${2:?}
  > }

  $ set_var myvar xyz
  $ echo "$myvar"
  xyz


reference to a variable in a for loop
unset the referenced vars also
lastly unset the variable reference

  $ declare -n loop_var
  $ a=1 b=2 c=3

  $ for loop_var in a b c; do
  >   echo "$loop_var"
  >   unset loop_var
  > done
  1
  2
  3

  $ unset -n loop_var
