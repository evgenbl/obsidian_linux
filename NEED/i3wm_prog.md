 Установка программ

#Установка пакетов, которые решают большинство проблем, с которыми вы можете столкнуться

pacman -S i3-wm  i3status dmenu pcmanfm ttf-font-awesome feh gvfs udiskie xorg-xbacklight ristretto compton  ntfs-3g alsa-lib alsa-utils file-roller p7zip unrar  lxterminal polkit

---

sudo pacman -S f2fs-tools dosfstools aspell-ru pulseaudio 

#Установка программ

sudo pacman -S firefox doublecmd-gtk2 filezilla gimp gnome-calculator libreoffice libreoffice-fresh-ru kdenlive screenfetch vlc ufw qbittorrent obs-studio veracrypt freemind flameshot

Если нужно русифицировать firefox добавляем еще и  firefox-i18n-ru 

---

#

#Нам понадобится:

    i3wm - оконный менеджер и его форк (ответвление) i3-gaps

    i3status - вывода строки статуса в i3bar

    dmenu - утилита для запуска программ

    lxterminal	0.4.0-1	VTE-based terminal emulator (part of LXDE)

  polkit, чтобы позволять обычным (не привелигелированным) пользователям запускать команды управления питанием.

    ttf-font-awesome - шрифтовые иконки

    feh - установка обоины на рабочий стол

    lxappearance - установка тем для окон, иконок, курсора

    pcmanfm - файловый менеджер

    gvfs и udiskie - для авто монтирования внешних дисков

    xorg-xbacklight - для управлением яркостью экрана

    ristretto и tumbler - для просмотра фото

    compton - для прозрачности окон и для устранения тиринга
    
i3-gaps( ВНИМАНИЕ, конфликтует с i3, устанавливать удаляя i3. При удалении i3 пакеты i3blocks, i3lock, i3status не удаляем!!!)    

Можно еще поставить sbxkb - индикатор раскладки, но можно и без этого!

---

yay -S compton (композитный менеджер) 

pacman -S dmenu (окно для запуска программ)

yay -S ttf-font-awesome (шрифтовые иконки)

yay -S xkblayout-state (пакет для показывания текущей раскладки)

pacman -S scrot (скриншотер)

pacman -S feh - установка обоины на рабочий стол (ссылка на обоину прописывается в конфиге i3)

yay -S lxappearance - установка тем для окон,иконок, курсора и т.д.

sudo pacman -S i3 (WM)

yay -S i3-gaps( ВНИМАНИЕ, конфликтует с i3, устанавливать удаляя i3. При удалении i3 пакеты i3blocks, i3lock, i3status не удаляем!!!)

yay -S terminus-ttf ( Шрифт для i3bar )wsr

echo "i3" >> .xinitrc


https://archlinux.org/groups/x86_64/lxde/

