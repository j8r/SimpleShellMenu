# Simple Shell Menu - A minimal POSIX shell menu

![screenshot](https://raw.githubusercontent.com/j8r/SimpleShellMenu/master/screenshot.png)


### use

```sh
ssm "Title
Description" "etc(can be empty)
choice1
choice2
choice3" "tab/space for choices"

case $linenb in
  1) printf "You select choice1\n";;
  2) printf "You select choice2\n";;
  3) printf "You select choice3\n";;
  4) printf "You select choice4\n";;
esac
```

### Example

```sh
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
```

## License

SimpleShellMenu- A minimal POSIX shell menu

Copyright (c) 2016 Julien Reichardt - [MIT License](http://opensource.org/licenses/MIT) (MIT)
