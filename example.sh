#!/bin/sh

. ./ssm.sh

ssm "\33[0;33m  Select an app with arrows <-v->\33[0m
  \33[0;33mConfirm with Enter <-'\33[0m" "\33[0;34m         Exit with Esc/Q\33[0m
Choice 1
Choice 2
Choice 3
Choice 4" "    "

case "$lchoice" in
  "Choice 1") printf "First choice selected\n";;
  "Choice 2") printf "Second choice selected\n";;
  "Choice 3") printf "Third choice selected\n";;
  "Choice 4") printf "Fourth choice selected\n";;
esac

case $linenb in
  1) printf "First choice chosen\n";;
  2) printf "Second choice chosen\n";;
  3) printf "Third choice chosen\n";;
  4) printf "Fourth choice chosen\n";;
esac
