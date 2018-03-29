* - use within quotes for joining strings into single word

separated by first IFS char

  $ function join_comma() (
  >   IFS=,
  >   echo "$*"
  > )
  $ join_comma "ab cd" "efg h" "x yz"
  ab cd,efg h,x yz

null string IFS - join without spaces

  $ function join_no_space() (
  >   IFS=
  >   echo "$*"
  > )
  $ join_no_space "ab cd" "efg h" "x yz"
  ab cdefg hx yz

unset IFS - join with spaces

  $ function join_space() (
  >   unset IFS
  >   echo "$*"
  > )
  $ join_space "ab cd" "efg h" "x yz"
  ab cd efg h x yz

default IFS - join with spaces

  $ function join_default() (
  >   echo "$*"
  > )
  $ join_default "ab cd" "efg h" "x yz"
  ab cd efg h x yz
