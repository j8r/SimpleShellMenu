#!/bin/sh

#https://wiki.archlinux.org/index.php/Color_Bash_Prompt
#http://www.bashguru.com/2010/01/shell-colors-colorizing-shell-scripts.html

# Example
printf "\33[0;30m test \33[0m\n"

# Reset
rCol='\33[0m'       # Reset color

# Regular Colors
Black='\33[0;30m'        # Black
Red='\33[0;31m'          # Red
Green='\33[0;32m'        # Green
Yellow='\33[0;33m'       # Yellow
Blue='\33[0;34m'         # Blue
Purple='\33[0;35m'       # Purple
Cyan='\33[0;36m'         # Cyan
White='\33[0;37m'        # White

# Bold
bBlack='\33[1;30m'       # Black
bRed='\33[1;31m'         # Red
bGreen='\33[1;32m'       # Green
bYellow='\33[1;33m'      # Yellow
bBlue='\33[1;34m'        # Blue
bPurple='\33[1;35m'      # Purple
bCyan='\33[1;36m'        # Cyan
bWhite='\33[1;37m'       # White

# Underline
uBlack='\33[4;30m'       # Black
uRed='\33[4;31m'         # Red
uGreen='\33[4;32m'       # Green
uYellow='\33[4;33m'      # Yellow
uBlue='\33[4;34m'        # Blue
uPurple='\33[4;35m'      # Purple
uCyan='\33[4;36m'        # Cyan
uWhite='\33[4;37m'       # White

# Reverse
rBlack='\33[7;30m'        # Black
rRed='\33[7;31m'          # Red
rGreen='\33[7;32m'        # Green
rYellow='\33[7;33m'       # Yellow
rBlue='\33[7;34m'         # Blue
rPurple='\33[7;35m'       # Purple
rCyan='\33[7;36m'         # Cyan
rWhite='\33[7;37m'        # White

# Background
BgBlack='\33[40m'       # Black
BgRed='\33[41m'         # Red
BgGreen='\33[42m'       # Green
BgYellow='\33[43m'      # Yellow
BgBlue='\33[44m'        # Blue
BgPurple='\33[45m'      # Purple
BgCyan='\33[46m'        # Cyan
BgWhite='\33[47m'       # White

# Intense
iBlack='\33[0;90m'       # Black
iRed='\33[0;91m'         # Red
iGreen='\33[0;92m'       # Green
iYellow='\33[0;93m'      # Yellow
iBlue='\33[0;94m'        # Blue
iPurple='\33[0;95m'      # Purple
iCyan='\33[0;96m'        # Cyan
iWhite='\33[0;97m'       # White

# Intense Bold
ibBlack='\33[1;90m'      # Black
ibRed='\33[1;91m'        # Red
ibGreen='\33[1;92m'      # Green
ibYellow='\33[1;93m'     # Yellow
ibBlue='\33[1;94m'       # Blue
ibPurple='\33[1;95m'     # Purple
ibCyan='\33[1;96m'       # Cyan
ibWhite='\33[1;97m'      # White

# Intense backgrounds
iBgBlack='\33[0;100m'   # Black
iBgRed='\33[0;101m'     # Red
iBgGreen='\33[0;102m'   # Green
iBgYellow='\33[0;103m'  # Yellow
iBgBlue='\33[0;104m'    # Blue
iBgPurple='\33[0;105m'  # Purple
iBgCyan='\33[0;106m'    # Cyan
iBgWhite='\33[0;107m'   # White
