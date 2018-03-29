function body can be any compound command

conditional expression

  $ function bool_func [[
  >   ${1:?} = x
  > ]]
  $ bool_func x
  $ bool_func y
  [1]

subshell - required parentheses after func name (function keyword optional)

  $ function subshell_func() (
  >   export a=1
  >   echo "$a"
  > )
  $ subshell_func
  1
  $ echo "${a:-var 'a' not set}"
  var 'a' not set

subshell #2 - or braces around the body (lame)

  $ function subshell_func_alt {(
  >   export b=2
  >   echo "$b"
  > )}
  $ subshell_func_alt
  2
  $ echo "${b:-var 'b' not set}"
  var 'b' not set
