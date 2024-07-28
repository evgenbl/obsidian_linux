Поместить в ~./fluxbox/startup
setxkbmap -layout "us,ru" -option "grp:ctrl_shift_toggle,grp_led:scroll"


перепробовал множество вариантов:

./fluxbox/startup

setxkbmap -layout "us,ru," -option "grp:ctrl_shift_toggle,grp_led:scroll"

dpkg-reconfigure keyboard-configuration

setxkbmap -layout 'us,ru(winkeys)' -option 'grp:alt_shift_toggle'

xorg.conf:

Section "InputDevice"
Identifier "Generic Keyboard"
Driver "kbd"
Option "CoreKeyboard"
Option "XkbRules" "xorg"
Option "XkbModel" "pc105"
Option "XkbLayout" "us,ru(winkeys)"
Option "XkbVariant" ","
Option "XkbOptions" "grp:ctrl_shift_toggle,grp_led:scroll".

Re: fluxbox. что такое slit??
Слит позволяет убрать программу с панели задач и располагает её окно в нужном для вас месте. Как пример - fluxter - пэйджер для флюкса.

В появившейся строке введите sudo shutdown -h now, чтобы выключить компьютер немедленно

<link rel="icon" href=https://evgenyshulyak.github.io/favicon.svg" type=" image/svg+xml">

Подскажите как установить локаль на определенное приложение ?
Андрей Черепанов
export LC_ALL=ru_RU.UTF-8
