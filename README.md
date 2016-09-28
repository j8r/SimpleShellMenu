# Simple Shell Menu - A minimal POSIX shell menu

![screenshot](https://raw.githubusercontent.com/j8r/SimpleShellMenu/master/screenshot.png)

### Use

```sh
ssm "Title
Description" "antoher descriptions(can be empty)
Choice 1
Choice 2
Choice 3" "tab/space for choices"

case "$ssm_text" in
  "Choice 1") printf "First choice selected\n";;
  "Choice 2") printf "Second choice selected\n";;
  "Choice 3") printf "Third choice selected\n";;
  "Choice 4") printf "Fourth choice selected\n";;
esac

case $ssm_line in
  1) printf "First choice chosen\n";;
  2) printf "Second choice chosen\n";;
  3) printf "Third choice chosen\n";;
  4) printf "Fourth choice chosen\n";;
esac
```

### Example

```sh
. ./ssm.sh

ssm "\33[0;33m  Select an app with arrows <-v->\33[0m
  \33[0;33mConfirm with Enter <-'\33[0m" "\33[1;31m         Exit with Esc/Q\33[0m
Choice 1
Choice 2
Choice 3
Choice 4" "    "

case "$ssm_text" in
  "Choice 1") printf "First choice selected\n";;
  "Choice 2") printf "Second choice selected\n";;
  "Choice 3") printf "Third choice selected\n";;
  "Choice 4") printf "Fourth choice selected\n";;
esac

case $ssm_line in
  1) printf "First choice chosen\n";;
  2) printf "Second choice chosen\n";;
  3) printf "Third choice chosen\n";;
  4) printf "Fourth choice chosen\n";;
esac
```

## For colors code, you can refer to `shellcolors.sh`

## License

SimpleShellMenu- A minimal POSIX shell menu

Copyright (c) 2016 Julien Reichardt - [MIT License](http://opensource.org/licenses/MIT) (MIT)
