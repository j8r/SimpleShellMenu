#!/bin/sh
# SimpleShellMenu - A minimal POSIX shell menu
# (c) 2016 Julien Reichardt - MIT License

end="\33[0m"
# Blod red
brd="\33[1;31m"
# White
wt="\33[0;37m"
# Text color
cl=$wt
# Selectioned text color
sl=$brd

linenb=1

get_key() {
  stty_state=$(stty -g)
  stty raw -echo min 1
  key=$(printf "$(dd bs=3 count=1 2>/dev/null)" | od -a)
  stty "$stty_state"
  key=${key#* *  }
  key=${key%*????????}
}

key_action() {
  case $key in
    w|W|' [   A') [ $linenb -gt 1 ] && linenb=$(( linenb - 1 )) || linenb=$total ;; # UP
    s|S|' [   B') [ $linenb -lt $total ] && linenb=$(( linenb + 1 )) || linenb=1;; # DOWN
    d|D|' [   C') ;; # RIGHT
    a|A|' [   D') ;; # LEFT
    q|Q|'0000000 esc') clear; exit;;
  esac
}

ssm() {
  total="-1"
  printf "\033c$1\n"
  while read line ;do
    [ $total = 0 ] && printf "$3$sl$line$end\n" || printf "$3$cl$line$end\n"
    total=$(( total + 1 ))
  done <<EOT
  $(printf "$2\n")
EOT
  while get_key && [ "$key" != '0000000  cr' ]; do
    key_action
    printf "\033c$1\n"
    printf "$2\n" | while read line ;do
      [ "$i" = $linenb ] && printf "$3$sl$line$end\n" || printf "$3$cl$line$end\n"
      i=$(( i + 1 ))
    done
  done
}
