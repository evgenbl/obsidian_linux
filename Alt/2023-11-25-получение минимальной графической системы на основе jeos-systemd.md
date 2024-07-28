Для такого случая получается такая последовательность действий:  
  
1. Загружаем образ jeos-systemd (в моем случае alt-p10-jeos-systemd-20221209-x86_64.iso)  

2. Устанавливаем минимальный набор пакетов  

  ``# apt-get update `` 
  
 ``# apt-get dist-upgrade ``
   
`` # apt-get install bash-completion openbox slim fonts-ttf-dejavu  
  
1. Переключаем цель systemd по умолчанию с многопользовательской (_multi-user.target_) на графическую (_graphical.target_)  
  
`# systemctl set-default graphical.target   `  

4. Создаем пользователя с членством в группах по аналогии с MATE StarterKit (кроме группы _camera_, т.к. в JeOS ее нет)  
  
``# useradd user `` 

``# passwd user `` 

``# usermod -a -G  wheel,uucp,proc,cdrom,floppy,cdwriter,audio,radio,video,xgrp,scanner user ``

5. Перезагружаем систему и заходим в сеанс Openbox для дальнейших экспериментов уже в графике.

## Настройка графического окружения LXDE     

Для работы в графической среде необходимо установить следующие пакеты:  

(yes | apt-get install lxde-sysvinit xinit xscreensaver lxde-lxdm && chkconfig dm --level 3 on)   - перезагрузиться (init 6);     

При некоторых ошибках в запущенном сеансе можно проверить настройки базовых приложений и конфликтные отключить (к примеру удалить xpolitkit).  

Пуск > Настройки > Персональные > Приложения по умолчанию для LXsession >: Базовые приложения      

Для работы с центром управления системой в графическом интерфейсе должен быть установлен пакет alterator-standalone:   

\# apt-get install alterator-standalone    # ставить по желанию  

Настроить выключение по кнопке питания.   

\# apt-get install acpid  

\# nano -b /etc/acpi/events/power

Вставить текст:  

event=button/power   
action=/etc/acpi/power.sh "%e"     

\# nano -b /etc/acpi/power.sh     

Вставить текст:  

/sbin/shutdown -h now "Power button pressed"      

\# chmod +x /etc/acpi/power.sh   
\# service acpid restart     

Настроить обозреватель сети в файловом менеджере.      

Для установки(включения) обозревателя сети в проводнике, необходимо установить gvfs-backends и дополнительно fuse-gvfs пакеты.      

\# apt-get install  gvfs-backends  fuse-gvfs   (подтягивяются зависимые пакеты ...samba-client samba-common samba-common-libs samba-common-tools samba-libs...)      

Отключить засыпание мыши и клавиатуры на USB портах.      

- необходимо установить пакет disable-usb-autosuspend     

- \# apt-get install disable-usb-autosuspend     

- если не поможет   

- \# nano -b /etc/default/grub   

и добавить в строку GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"   

через пробел параметр usbcore.autosuspend=-1 обновить ядро   

\# grub-mkconfig -o /boot/grub/grub.cfg   

и перезагрузить систему

Может уже, что изменилось, давно не ставил

## Устанавливаем **xorg-server** и драйвера и перезагружаем...  

`# apt-get update ; apt-get install xorg-server xorg-drv-vmmouse xorg-drv-vmware virtualbox-guest-additions xdm xfs xsetup xinit   # reboot`

Если сразу сменить уровень инициализации...  


`# mcedit /etc/inittab`Меняем параметр i**nitdefault:** с **3** на **5**  


`# The default runlevel.   id:5:initdefault:   `

После перезагрузки получаем **Х**-ы с графической строкой приглашения... А раз у нас **id:5** то строка ни куда не ведет... Ставим Стол и Менеджер столов...  

`# apt-get update ;  # apt-get dist-upgrade ; apt-get install xfce4-default gdm2.20`

И после перезагрузки получаем приглашение в **GDM2** и рабочую **XFCE** которую осталось доработать напильником под себя...

