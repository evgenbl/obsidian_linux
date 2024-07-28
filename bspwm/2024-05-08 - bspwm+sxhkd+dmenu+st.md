Bspwm - это минималистичный, быстрый и достаточно конфигурируемый тайловый оконный менеджер, представляющий окна как слои двоичного дерева. Поддерживается несколько мониторов. Имеет простую настройку.

В качестве быстрого решения для установки вы можете воспользоваться моим [установочным скриптом](https://github.com/BruederYAR/InstallScripts).

## Что будет использоваться:

- bspwm - Тайловый оконный менеджер.
    
- sxhkd - Демон горячих клавиш для X.
    
- dmenu - Динамическое меню для X.
    
- polybar - Инструмент для создания статус-баров.
    
- picom - Композитор окон для X.
    

Данные компоненты легкие и быстрые, содержат небольшое кол-во зависимостей.

Вы с легкостью можете заменить часть компонентов на более красивые:

- Вместо dmenu можно использовать [Rofi](https://wiki.archlinux.org/title/Rofi), но стоит учитывать мощность вашей машины т.к. на слабой машине данное меню может открываться несколько секунд.
    
- Вместо picom можно использовать его форк [picom-jonaburg-git](https://aur.archlinux.org/packages/picom-jonaburg-git) из AUR. Он добавляет эффект размытия, закруглённые края.
    

Примечание. В этом гайде не будет рассматриваться "красивый" дизайн системы. Обои, иконки, шрифты вы сможете поставить самостоятельно.

## Установка

Все компоненты настраиваются в конфиг файлах, которые находятся в домашней директории пользователя. Поэтому **не используйте root пользователя**, а создайте нового. Иначе вы можете столкнуться с такими проблемами как запуск приложений в sandbox режиме (браузеры, приложения на electron).

### Создание пользователя

Создаём пользователя. Замените "user_name" на нужное имя пользователя.

```
useradd -m -G wheel user_name
```

Ключ -G wheel означает, что пользователь войдет в группу wheel. Это нужно чтобы выполнят команды от суперпользователя (sudo).

Задаём пароль для пользователя:

```
passwd user_name
```

Чтобы группа имела право выполнять команды от суперпользователя, нужно изменить файл /etc/sudoers:

```
nano /etc/sudoers
```

Находим и раскомментируем строчку:

```
# %wheel ALL=(ALL:ALL) ALL
```

### Пакеты и программы

Основные пакеты для установки:

```
pacman -S bspwm sxhkd dmenu polybar picom
```

Также нужно скачать эмулятор терминала. Мой выбор пал на легковесный [xfce4-terminal](https://docs.xfce.org/apps/terminal/start):

```
pacman -S xfce4-terminal
```

Для удобства скачаем браузер. В качестве браузера я использую [qutebrowser](https://qutebrowser.org/). Он заточен на использование без мыши. Если нужен обычный браузер, то качаем firefox.

```
pacman -S qutebrowser
```

#### Xorg

```
pacman -S xorg xorg-xinit
```

Группа xorg содержит внутри большое кол-во пакетов и шрифтов.

Если вы хотите более легкую установку, то стоит скачать определённые пакеты:

- xorg-server - Xorg x сервер
    
- xorg-xinit - Для использование xinit и startx.
    
- xorg-xset - Утилита пользовательских настроек.
    
- xorg-xsetroot - Установка фона root окна на заданный паттерн или цвет.
    
- xorg-xrandr - Утилита для настройки RandR (настройка мониторов).
    
- xorg-xrdb - Утилита базы данных для xorg сервера
    

```
pacman -S xorg-server xorg-xinit xorg-xset xorg-xsetroot xorg-xrandr xorg-xrdb
```

_xorg-server и xorg-xinit скачиваются обязательно_

Так как шрифты не установлены, поставим gnu free fonts:

```
pacman -S gnu-free-fonts
```

#### Видео драйвер

- xf86-video-amdgpu - новый, свободный драйвер для видеокарт AMD.
    
- xf86-video-ati - старый свободный драйвер для AMD.
    
- xf86-video-intel - драйвер для встроенной графики Intel.
    
- xf86-video-nouveau - свободный драйвер для карт NVIDIA.
    
- xf86-video-vesa - свободный драйвер, поддерживающий все карты, ограниченная функциональность. Для виртуальной машины.
    
- xf86-video-qxl - свободный драйвер виртуальной видеокарты, ограниченная функциональность. Для виртуальной машины. (Отсутствует в пакетах Artix)
    
- nvidia - проприетарный драйвер для NVIDIA.
    

В данном случае надо смотреть на свою машину и производителя видеокарты.

Так как я использую виртуальную машину, то устанавливаю xf86-video-vesa:

```
pacman -S xf86-video-vesa
```

## Конфигурация

Все операции с конфигами я буду производить не от root пользователя. Символ "~" в пути файла\директории означает /home/{user} (домашняя директория). Если вам нужно установить конфиг файлы для определённого пользователя, замените "~" на нужную домашнюю директорию пользователя.

Некоторые конфиг файлы будут храниться в ~/.config. Если данная директория отсутствует, то создайте её:

```
mkdir ~/.config
```

### Bspwm

Создадим папку для локального конфига:

```
mkdir ~/.config/bspwm
```

Скопируем конфиг файл в домашнюю директорию:

```
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm
```

Теперь откроем и изменим его:

```
nano ~/.config/bspwm/bspwmrc
```

Немного про правила приложений. Само правило выглядит примерно так:

```
bspc rule -a qutebrowser desktop='^2'
```

С помощью такого правила можно явно указать на каком рабочем столе запускать приложение или его начальное состояние

#### Рабочие столы

Данная строка задаёт 10 рабочих столов на главный монитор:

```
bspc monitor -d I II III IV V VI VII VIII IX X
```

Если вы обладатель нескольких мониторов, то можно распределить рабочие столы по ним.

Сначала узнаём имена мониторов в системе:

```
xrandr
```

Теперь мы можем добавить настройку рабочих столов для определённого монитора:

```
bspc monitor {Монитор} -d {Рабочие столы}
```

Может получиться примерно так:

```
bspc monitor DVI-I-1 -d I II III IVbspc monitor DVI-I-2 -d V VI VIIbspc monitor DP-1 -d VIII IX X
```

#### Цвета, рамки, отступы

Рамки и отступы:

```
bspc config border_width         2bspc config window_gap          12
```

Цвет рамки в разных состояниях:

```
bspc config normal_border_color "#0A1F32"bspc config active_border_color "#2D384A"bspc config focused_border_color "#344756"
```

Цвет пространства при выборе положения нового окна:

```
bspc config presel_feedback_color "#595B82"
```

Фокус окна наведение курсора:

```
bspc config focus_follows_pointer truebspc config pointer_modifier    super
```

Коэффициент разделение. Сколько процентов останется от родительского окна при открытии нового.

```
bspc config split_ratio          0.52
```

Отступы и рамки, когда открыто одно окно:

```
bspc config borderless_monocle   truebspc config gapless_monocle      true
```

### Sxhkd

Создадим папку для локального конфига:

```
mkdir ~/.config/sxhkd
```

Скопируем конфиг файл в домашнюю директорию:

```
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd
```

Теперь откроем и изменим его:

```
nano ~/.config/sxhkd/sxhkdrc
```

Все что минимально нужно сделать - это изменить запуск терминала на нужный:

```
super + Return      
	xfce4-terminal
```

Можно самостоятельно добавить горячие клавиши по такому сантаксису:

```
Клавиша_Модификатор + Клавиша  Команда
```

Если нужно выполнять команду с различными аргументами, то используем такой синтаксис:

```
Клавиша_Модификатор + {Клавиша1, Клавиша2}   Команда {Аргумент1, Аргумент2}
```

В данном случае "Клавиша1" соответствует "Аргументу1" и т.д.

### Polybar

Создадим папку для локального конфига:

```
mkdir ~/.config/polybar
```

Скопируем конфиг файл в домашнюю директорию:

```
cp /usr/share/doc/polybar/examples/config.ini ~/.config/polybar/config
```

Теперь создадим загрузочный скрипт:

```
nano ~/.config/polybar/launch.sh
```

В этом файле прописываем:

```
killall -q polybar # Отключение бара, если он включенecho "---" | tee -a /tmp/example_bar.log # Просмотр логовpolybar example >> /tmp/example_bar.log # Запуск бара example и запись его лога
```

_Название бара прописывается в конфиг файле_

Чтобы бар автоматически запускался добавим данную строку в **конец** файла ~/.config/bspwm:

```
$HOME/.config/polybar/launch.sh
```

Примечание. Автозапуск можно поставить разные места, например в xinitrc, но у меня, каким-то образом, polybar при таком подходе ломает bspwm.

#### Цвета

В начале конфигурационного обычно ставиться описание цвета бара:

```
[colors]background = #222background-alt = #444foreground = #dfdfdfforeground-alt = #f0f0f0primary = #646464secondary = #646464alert = #646464underline = #c0c0c0
```

_в данном случае это нейтральные темные цвета_

#### Bar

Первой строкой ставиться заголовок bar/**название**

```
[bar/base]
```

Опциональная привязка в определённому монитору(так можно поставить на каждый монитор разные бары):

```
monitor = ${env:MONITOR:HDMI-1}
```

Настройка размера:

```
width = 100%height = 27;offset-x = 1%;offset-y = 1%radius = 8.0fixed-center = true
```

Цвета:

```
background = ${colors.background}foreground = ${colors.foreground}
```

Настройка линии:

```
line-size = 2line-color = #f00
```

Настройка рамки:

```
border-size = 4border-color = #00000000
```

Шрифты:

```
font-0 = fixed:pixelsize=10;1font-1 = unifont:fontformat=truetype:size=8:antialias=false;0font-2 = siji:pixelsize=10;1
```

Отступы:

```
padding-left = 0padding-right = 5module-margin-left = 1module-margin-right = 2
```

Расположение модулей:

```
modules-left = bspwm modules-center = xwindowmodules-right =  pulseaudio eth wlan xkeyboard date
```

#### Модули

Polybar поддерживает дополнительные модули, которые можно сделать самостоятельно на любом интерпретируемом языке.

Синтаксис модуля строится на заголовке, типе, место запуска и настройки. Например модуль версии ядра:

```
[module/info-kernel]type = custom/scriptexec = uname -rinterval = 1024
```

Сообщество написало много модулей. [Репозиторий с модулями](https://github.com/polybar/polybar-scripts).

Выбирайте любой понравившийся и скачайте. Например:

```
~/.config/polybar
```

Сделайте файл исполняемым:

```
chmod +x ~/.config/polybar/script.sh
```

Добавьте ваш модуль в конфиг polybar:

```
[module/{ИМЯ}]type = custom/scriptexec = ~/.config/polybar/script.sh
```

#### Переключение между барами:

Если вы не хотите перегружать один бар множеством модулей, то файле конфигурации polybar создайте 2 настройки бара (можно просто скопировать и изменить имя с набором модулей):

```
[bar/base]modules-left = bspwmmodules-center = xwindowmodules-right =  pulseaudio eth wlan xkeyboard date; ОСТАЛЬНЫЕ НАСТРОЙКИ[bar/additional]modules-left = info-kernelmodules-center = modules-right = filesystem memory cpu; ОСТАЛЬНЫЕ НАСТРОЙКИ
```

Теперь создайте 2 скрипта для запуска баров:

```
# ~/.config/launch.shkillall -q polybarecho "---" | tee -a /tmp/polybar-base.logpolybar base >>/tmp/polybar-base.log# ~/.config/launch-additional.shkillall -q polybarecho "---" | tee -a /tmp/polybar-additional.logpolybar additional >>/tmp/polybar-additional.log
```

Сделаем их исполняемыми:

```
chmod +x ~/.config/launch.shchmod +x ~/.config/launch-additional.sh
```

Теперь в конфигурацию sxhkd добавим горячие клавиши для переключение баров:

```
# base barsuper + F1      $HOME/.config/polybar/launch.sh # additional barsuper + F2      $HOME/.config/polybar/launch-additional.sh
```

Больше о конфигурации можно почитать в [вики](https://github.com/polybar/polybar/wiki/Configuration).

### Xinitrc

Скопируем конфиг файл в домашнюю директорию:

```
cp /etc/X11/xinit/xinitrc ~/.xinitrc
```

Теперь откроем и изменим его:

```
nano ~/.xinitrc
```

Удаляем все после строчки "fi" в конце файла. В моём случае это:

```
# twm &# xclock -geometry 50x50-1+1 &# xterm -geometry 80x50+494_51 &# xterm -geometry 80x20+494-0 &# exec xterm -geometry 80x66+0+0 -name login
```

Заменяем эти команды на:

```
setxkbmap -option grp:alt_shift_toggle us,ru    # Смена языка. Такой подход не совсем "правильный"picom -f &                                      # Запуск picomxsetroot -cursor_name left_ptr                  # Установка стандартного курсораexec bspwm                                      # Запуск bspwm
```

После изменения конфигурации xinitrc, можно попробовать запустить окружение с помощью:

```
startx
```

Чтобы выйти из окружения нажмите super+alt+q.

### Настройка мониторов

Чтобы мониторы правильно отображались, нужно указать их конфигурацию для xrandr. Есть две вариации как это сделать.

#### Arandr

Простой вариант это скачать Arandr, он предназначен для обеспечения простого визуального интерфейса для [XRandR](http://www.x.org/wiki/Projects/XRandR).

```
pacman -S arandr
```

Так как программа графическая запускаем её.

![](https://habrastorage.org/getpro/habr/upload_files/f62/032/af9/f62032af920433df674fdb8d60e310aa.PNG)

Выводиться примерно такой интерфейс. Вы можете мышкой настроить положение мониторов. Если нажать ПКМ по монитору, то покажется меню, где есть дополнительные настройки. Мы можем задать ориентацию, разрешение для каждого монитора, а так же сделать один из мониторов главным.

После настройки нужно сохранить скрипт. Нажимаем на Layout > Save as. Даём название файла, например, display.sh.

Делаем файл исполняемым:

```
chmod +x .screenlayout/display.sh
```

#### Ручная настройка

Если вы не хотите устанавливать лишние приложения, то можно сделать все "вручную".

Выводим список мониторов:

```
xrandr
```

Помимо списка мониторов выводится информация о том, какие разрешения могут иметь мониторы, их ориентация, герцовка и т.д.

```
# Screen 0: minimum 320 x 200, current 1280 x960, maximum 8192 x 8192# Virtual-1 connected primary 1280x960+0+0 (normal left inverted right x axis y axis) 0mm x 0mm#   800x600     60.00 + 60.32#   2560x1600   59.99#   2560x1440   59.95#   1920x1440   60.00#   1856x1392   60.00#   1792x1344   60.00#   1920x1200   59.88#   1920x1080   59.96#   1600x1200   60.00#   1680x1050   59.95#   1400x1050   59.98#   1280x960    60.00*#   1360x768    60.02#   1280x800    59.81#   1152x864    75.00#   1280x768    59.87#   1280x720    59.86#   1024x768    60.00#   640x480     59.94# Virtual-2 disconnected (normal left inverted right x axis y axis)# Virtual-3 disconnected (normal left inverted right x axis y axis)# Virtual-4 disconnected (normal left inverted right x axis y axis)# Virtual-5 disconnected (normal left inverted right x axis y axis)# Virtual-6 disconnected (normal left inverted right x axis y axis)# Virtual-7 disconnected (normal left inverted right x axis y axis)# Virtual-8 disconnected 
```

Теперь можно настроить мониторы командой:

```
xrandr --output {Монитор} --mode {Разрешение}  
```

В моём случае это выглядит вот так:

```
xrandr --output Virtual-1 --mode 1280x960
```

Аргумент auto позволяет автоматически выставить разрешение:

```
xrandr --output Virtual-1 --auto
```

Если в списке присутствует несколько частот обновления, их можно изменить с помощью аргумента rate:

```
xrandr --output Virtual-1 --auto --rate 60
```

Чтобы сделать монитор главным, используем аргумент primary:

```
xrandr --output Virtual-1 --auto --primary
```

Если вам нужно изменить ориентацию монитора, то используйте аргумент rotate:

```
xrandr --output Virtual-1 --auto --rotate normal
```

Необязательно настраивать несколько мониторов разными командами, xrandr поддерживает настройку нескольких мониторов одной командой:

```
xrandr --output Virtual-1 --auto --output Virtual-2 --auto
```

С помощью аргумента off можно отключить монитор:

```
xrandr --output HDMI-1 --off --output HDMI-2 --auto
```

Если вы определились с настройкой, то сохраните команду в файл.

Создадим директорию .screenlayout, если она не присутствует:

```
mkdir ~/.screenlayout
```

Теперь запишем команду конфигурации в файл display.sh. В моё случае это выглядит так:

```
echo "xrandr --output Virtual-1 --primary --mode 1280x960 --rotate normal" >> .screenlayout/display.sh
```

Делаем файл исполняемым:

```
chmod +x .screenlayout/display.sh
```

#### Автозапуск

Автозапуск будем производить с помощью xinit. Добавляем в файл .xinitrc строчку:

```
$HOME/.screenlayout/display.sh  # Куда-нибудь сюдаpicom -f &                      xsetroot -cursor_name left_ptrexec bspwm                      
```

### Betterlockscreen

Данный компонент необязателен, но он удобен, если вам надо блокировать систему сочетанием клавиш.

#### Установка

Betterlockscreen устанавливается из AUR, если у вас не установлен yay, то его необходимо установить.

Скачиваем yay с репозитория:

```
git clone https://aur.archlinux.org/yay.git 
```

Переходим в установленную директорию:

```
cd yay 
```

Собираем пакет:

```
makepkg -si 
```

Теперь установим сам betterlockscreen с помощью yay:

```
yay -S betterlockscreen
```

#### Настройка

Если запустить betterlockscreen без аргументов, он выведет описание всех аргументов. Рассмотрим некторые:

Добавление изображения:

Аргумента -u --update <PATH> добавляет обои на экран блокировки. Обои я скачал в директорию ~/.config/betterlockscreen/

```
betterlockscreen -u ~/.config/betterlockscreen/wallpaper.jpg
```

Так же можно дополнительно настроить отображение эффектов:

- --dim <N> Затемнение изображения в процентах (0-100)
    
- --blur <N> Величина размытия изображения (0.0-1.0)
    
- --color <HEX> Заполнить цветом задний фон палитрой HEX
    

Например:

```
betterlockscreen -u ~/.config/betterlockscreen/wallpaper.jpg --dim 20 --blur 0.5
```

Теперь можно запустить экран блокировки с различными эффектами с помощью аргумента -l --lock <EFFECT>:

```
betterlockscreen -l blur 
```

Так же можно поставить изображение в качестве обоев рабочего стола:

```
betterlockscreen -u ~/downloads/wallpaper.jpgbetterlockscreen -w
```

Добавим горячую клавишу для запуска экрана блокировки в конфигурацию sxhkd:

```
alt + shift + x      betterlockscreen -l blur
```

## Запуск и управление

Так как я не рассматриваю решения с использованием дисплейного менеджера, запуск будет производиться с консоли:

```
startx
```

Данная команда запускает наше графическое окружение на иксах. В работе это выглядит примерно так:

![](https://habrastorage.org/getpro/habr/upload_files/0fa/460/4ba/0fa4604ba8c05b3e38aaffa76da57248.PNG)

### Стандартные горячие клавиши sxhkd:

|Shortcut|Действие|
|---|---|
|super + Return|Запуск терминала|
|super + Spase|Запуск dmenu|
|super + Escape|Перезапуск конфига sxhkd|
|super + alt + {q,r}|Выйти/перезапустить bspwm|
|super + {_,shift + }w|Закрыть и убить приложение|
|super + m|Переход в режим монокля и обратно в плиточный|
|super + y|Отправить новейший отмеченный узел в новейший предварительно выбранный узел|
|super + g|Поменяйте местами текущий узел и самое большое окно|

Состояние и флаги:

|Shortcut|Действие|
|---|---|
|super + f|Установить режим окна (focused, floating)|
|super + ctrl + {m,x,y,z}|Установить флаг узла (marked,locked,sticky,private)|

Фокус и перемещение:

|Shortcut|Действие|
|---|---|
|super + {_,shift + }{h,j,k,l}|Фокус на ноду в выбранном направлении|
|super + {p,b,comma,period}|Фокус узлов в другой путь(workspace)|
|super + {_,shift + }c|Фокус на следующее/предыдущий окно в текущем рабочем столе|
|super + bracket{left,right}|Фокус на следующий/предыдущий рабочий стол в текущем мониторе|
|super + {grave,Tab}|Фокус на последний узел/рабочий стол|
|super + {o,i}|Фокус на более старый или новый узел в истории фокуса|
|super + {_,shift + }{1-9,0}|Переключиться на рабочий стол или перетащить на него активное окно|

Предварительный выбор:

|Shortcut|Действие|
|---|---|
|super + ctrl + {h,j,k,l}|Выбор направления открытого окна|
|super + ctrl + {1-9}|Выбрать рабочий стол на котором откроется новое окно|
|super + ctrl + space|Отменить предварительный выбор для сфокусированного узла|
|super + ctrl + shift + space|Отменить предварительный выбор для сфокусированного рабочего стола|

Перемещение и изменение размера:

|Shortcut|Действие|
|---|---|
|super + alt + {h,j,k,l}|Увеличить окно сдвинув одну из его сторон|
|super + alt + shift + {h,j,k,l}|Уменьшить окно сдвинув одну из его сторон|
|super + {Left,Down,Up,Right}|Перемещение плавающих окон|

## Литература

[habr.com](https://habr.com/ru/articles/721112/)