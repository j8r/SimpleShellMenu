#!/bin/sh
# SimpleShellMenu - A minimal POSIX shell menu
# (c) 2016 Julien Reichardt - MIT License

end="\33[0m"
# White text color
cl="\33[0;37m"
# Bold Yellow selectioned color
sl="\33[1;33m"

ssm_get_key() {
  stty_state=$(stty -g)
  stty raw -echo min 1
  key=$(printf "$(dd bs=3 count=1 2>/dev/null)" | od -a)
  stty "$stty_state"
  key=${key#* *  }
  key=${key%*????????}
}

ssm_key_action() {
  case $key in
    w|W|' [   A') [ $ssm_line -gt 1 ] && ssm_line=$(( ssm_line - 1 )) || ssm_line=$total ;; # UP
    s|S|' [   B') [ $ssm_line -lt $total ] && ssm_line=$(( ssm_line + 1 )) || ssm_line=1;; # DOWN
    d|D|' [   C') ;; # RIGHT
    a|A|' [   D') ;; # LEFT
    q|Q|'0000000 esc') clear; exit;;
  esac
}

ssm() {
  ssm_line=1
  total="-1"
  printf "\033c$1\n"
  while read line ;do
    [ $total = 0 ] && printf "$3$sl$line$end\n" && ssm_text=$line || printf "$3$cl$line$end\n"
    total=$(( total + 1 ))
  done <<E
  $(printf "$2")
E
  while ssm_get_key && [ "$key" != '0000000  cr' ]; do
    ssm_key_action
    i=
    printf "\033c$1\n"
    while read line ;do
      [ "$i" = $ssm_line ] && printf "$3$sl$line$end\n"  && ssm_text=$line || printf "$3$cl$line$end\n"
      i=$(( i + 1 ))
    done <<E
    $(printf "$2")
E
  done
}
