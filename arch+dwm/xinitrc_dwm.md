Мой `.xinitrc`

```php
#!/bin/sh

#Dinamic window manager
while true
    do
        xsetroot -name "Бат:$(eval echo `grep remain /proc/acpi/battery/BAT1/state|cut -d ' ' -f 8`*100/4400 | bc) Звук:$(amixer -c 0 sget Master |awk '/Mono:/ {print($6$4)}') `skb 1` $(date '+%a %e %B %Y %H:%M:%S')"
        sleep 2
    done &
    #Autostart section
    sakura &
        sleep 2
    geany &
        sleep 2
    chromium &
        sleep 2
    claws-mail &
    fbsetbg -f ~/backgrounds/seattle_1280x1024.jpg &
exec dwm
```
---
.xinitrc and .xprofile

\# keyboard layout

setxkbmap -layout "us,ru" -variant -option grp:caps_toggle,grp_led:scroll &

\# wallpaper

feh --bg-scale /home/jenit/dwm_1920x1080.jpg &

nitrogen --restore &
