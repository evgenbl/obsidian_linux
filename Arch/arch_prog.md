### Установка программ

#### Установка пакетов, которые решают большинство проблем, с которыми вы можете столкнуться

- sudo pacman -S f2fs-tools dosfstools ntfs-3g alsa-lib alsa-utils file-roller p7zip unrar gvfs aspell-ru pulseaudio 

#### Установка программ

- sudo pacman -S firefox doublecmd-gtk2 filezilla gimp gnome-calculator libreoffice libreoffice-fresh-ru kdenlive screenfetch vlc ufw qbittorrent obs-studio veracrypt freemind flameshot

Если нужно русифицировать firefox добавляем еще и  firefox-i18n-ru 

## Настройки Xfce

Смотрите видео по настройке Xfce https://vk.cc/7qwQ8L 

Настройка прозрачного терминала см. в видео https://vk.cc/9afFih 

Время в видео 39:36

Настройки моих горячих клавиш по ссылке https://github.com/ordanax/dots/blob/master/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml 

#Настраиваем горячие клавиши на запуск терминала
#Перейдите в Settings (Настройки) > Keyboard (Клавиатура) > Application Shortcuts (Комбинации клавиш)
xfce4-terminal
Клавиши Ctrl+Alt+T

#Настраиваем горячие клавиши на скриншот
Назначьте команду 
xfce4-screenshooter -f 
на клавишу Ctrl + Print Screen, которая будет делать скриншоты всего экрана.

На клавишу Print Screen
flameshot gui, создание скриншота при помощи программы flameshot 

#Настраиваем горячие клавиши на системный монитор
Назначьте команду 
xfce4-taskmanager
на клавиши Ctrl+Alt+M

#Запуск проигрывателя VLC
Ставим на клавиши Super+V
vlc

#Быстрое выключение компьютера клавишами
Ставим на клавиши Super+S
shutdown -h now

#Если нужно установить время для Екатеринбурга
timedatectl set-timezone Asia/Yekaterinburg

#Настраиваем раскладку клавиатуры
Настройки - клавиатура - раскладка выбираем Shift+Alt

#Включить звук
sudo amixer sset Master unmut

#Включить обнаружение съемных устройств
Настройки - съемные устройства и носители данных

# Настраиваем временную зону
ПКМ на времени - свойства - ставим вашу временную зону. Например Asia/Yekaterinburg

# Управление звуком на клавиатуре
https://wiki.archlinux.org/index.php/Xfce#Keyboard_volume_buttons 

#Дополнительные настройки по Xfce
https://wiki.archlinux.org/index.php/Xfce_(Русский) 

#Установка директорий по умолчанию home, music, doсuments и т.д.
Установите xdg-user-dirs,
sudo pacman -S xdg-user-dirs

а затем выполните:
$ xdg-user-dirs-update
