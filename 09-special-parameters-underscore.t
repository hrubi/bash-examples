within a command, it is set to full path name used for invoking that command

  $ perl -e 'my $p = $ENV{"_"}; print "path: $p\n";'
  path: /usr/bin/perl


within the bash session, it is set to the last argument of the last command run

  $ cat > script <<\EOF
  > ls /tmp >/dev/null
  > echo "$_"
  > EOF
  $ bash script
  /tmp
