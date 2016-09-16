#!/bin/sh

. ./ssm.sh

ssm "\33[0;33m  Select an app with arrows <-v->\33[0m
  \33[0;33mConfirm with Enter <-'\33[0m" "\33[0;34m         Exit with Esc/Q\33[0m
app1
app2
app3
app4" "    "

case $linenb in
  1) printf "You choose app1\n";;
  2) printf "You choose app2\n";;
  3) printf "You choose app3\n";;
  4) printf "You choose app4\n";;
esac
