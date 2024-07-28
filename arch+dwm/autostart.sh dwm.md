.local
share
dwm
autostart.sh

#!/bin/bash 

picom &
\# xrdb -merge ~/.Xresources &
\# /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
nitrogen --restore &
\# setxkbmap -layout gb &
setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:scroll" &
\# dwmbar2 &