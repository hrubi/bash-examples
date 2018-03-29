@ - double quoted expands to separate words

  $ function loop_params {
  >   local x
  >   for x in "$@"; do
  >     echo "$x"
  >   done
  > }

  $ loop_params "ab cd" "ef gh"
  ab cd
  ef gh


@ - double quoted within other string

  $ function loop_params_context {
  >   local x
  >   for x in "start $@ end"; do
  >     echo "$x"
  >   done
  > }

  $ loop_params_context "ab cd" "ef gh"
  start ab cd
  ef gh end
