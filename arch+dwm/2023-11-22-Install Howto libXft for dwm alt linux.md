https://wiki.archlinux.org/title/Dwm

1. Update the package index:
    
    ```
    # sudo apt-get update
    ```
    
2. Install libXft-devel rpm package:
    
    ```
    # sudo apt-get install libXft-devel

    ```
---

Меню приложений- нет, даже часов нет, лишь 9 рабочих столов, с десяток клавишных сочетаний, да три режима тайловости:

Monocle (Alt-M) - одно окно на весь экран.

Tiled (Alt-T) - тайловый режим

Floating (Alt-F) - в данном режиме можно произвольно менять размер окон, зажав Alt, ПКМ и потянув за край окна

---
А если прописать в ~/.xinitrc такой простенький скрипт:

**while true; do  
   xsetroot -name "$( date +"%F %R" )"  
   sleep 1m    # Update time every minute  
done &**

То в статус-баре появяться такие вот замечательные часы с датой, обновляемые каждую минуту с момента запуска иксов (только, не сами часы обновляются каждую минуту, а ежеминутно у команды date спрашивается дата и время, и вывод через xsetroot идет в статусбар)

---

Но когда я меняю раскладку непосредственно из команды терминала, запустив

```
setxkbmap ru
```

это работает как в терминале, так и в браузере.

---
Внешне DWM выглядит ровно так- как выглядят запущенные программы, которые в свою очередь занимают все рабочее пространство окна, вверху окна есть только небольшая строка состояния, где в левом углу расположены теги _[]{.менеджерах .других .в .столами .рабочими .с .аналогии .по}_ они пронумерованы, переключаться между тегами можно используя управляемые клавиши, по умолчанию это **Alt+N** где **N** номер/имя тега от **1** до **9**, **Alt+Tab** переключает с активного тега на предыдущий тег, следом идет расположение окон, количество окон в теге, заголовок активного окна.

По умолчанию DWM поддерживает три режима расположения окон, плиточный **[]=** для переключения в этот режим, по умолчанию клавиши **Alt+T**, монокль **[]{lang=“M”}** вместо **M** будет число окон- клавиши **Alt+M** и плавающий **`><>`** **Alt+F**. Все расположения могут быть применены динамически, оптимизируя окружающую среду.

В плиточном расположении, окна группируются в две управляемые области, мастер и укладка. Основная область мастер, содержит окно которое в настоящее время Вам нужно, тогда как область укладки,содержит все остальные окна. По умолчанию используется плиточный режим. Если открыто одно окно, оно занимает всю область пользовательского пространства, добавив новое приложение оно занимает область мастер в левой части окна, само же окно разбивается на две колонки, предыдущее приложение переходит в область укладки _[]{.окна .часть .правая}_ . Изменять размер областей можно только по ширине, управляющими клавишами **Alt+H** и **Alt+L**. В правом столбце, в области укладки будут размещаться остальные открытые окна перемещенные из области мастер, пространство в этой области делится вертикально,поровну между всеми приложениями. Перемещать предыдущее приложение из области укладки в область мастер и соответственно приложение из области мастер в область укладки,меняя их расположения местами можно управляющими клавишами **Alt+Enter**. Ввод **Alt+Space** для активного окна изменит его режим расположения на плавающий, позволяя этому окну нарушать плиточный режим расположения остальных окон. В этом режиме, можно использовать мышь для перемещения и изменения размеров окна, удерживая **Alt** и **левую кнопку мыши**, позволяет перемещать окно, **Alt** и **правая кнопка мыши** позволяет изменять размер окна.

Нажав **Alt+M** Вы переключите режим расположение окон- монокль, активное окно займет все рабочее пространство и перекроет все другие открытые окна, запустив новое приложение оно перекроет предыдущие. В независимости от режима расположения окон, с помощью клавиш **Alt+J**, **Alt+K**, Вы свободно сможете переключаться между окнами делая окна активными по очереди. Если это режим расположения монокль,то одно окно будет сменять другое, если плиточный режим, то переключится фокус с одного окна на другое, в плавающем режиме все так же, окна будут активными по порядку.

Для перемещения окон между тегами, с одного тега на другой, используйте клавиши **Alt+Shift+N** где **N** номер тега в который Вы хотите перенести окно, для того что бы отобразить окно на всех тегах нажмите **Alt+Shift+0** и снова **Alt+Shift+N** где номер тега, что бы отменить действие размещение на всех тегах этого окна, окно будет перемещено в тег **N**.

Для того что бы запустить консоль, нажмите **Alt+Shift+Enter** _[]{.пожелаете .если .консоль, .другую .любую .указать .сможете .Вы .дальнейшем .в .поправимо, .это .uxterm, .умолчанию .по}_ , **Alt+P** запустит **dmenu** для запуска приложений которые Вы будете использовать _[]{.желаемому .к .приближая .сокращается .приложений .список .набора .мере .по .вам, .я .скажу .вещь .удобная .очень}_ , только его надо предварительно установить иначе придется запускать приложения из консоли.

Для того что бы убить приложения **Alt+Shift+C**  
Что бы спрятать строку состояния **Alt+B**  
Что бы завершить работу DWM **Alt+Shift+Q**

---
### Список горячих клавиш: модификатор, клавиша, функция, аргумент

ShiftMask

Зажатая клавиша

Shift ControlMask

Зажатая клавиша

Control ShiftMask

Зажатая клавиша

Shift ControlMask

Зажатая клавиша Control

Например

```php
...
{ MODKEY|ControlMask|ShiftMask,	XK_9,		toggletag,	"8" }, \
...
```

такая строка означает зажатие **Alt+Control+Shift+9**.

spawn

Запуск внешней программы

setlayout

Переключить режим

incmasterw

Увеличить/уменьшить ширину MASTER-области

incnmaster

Увеличить/уменьшить количество окон в MASTER-области

focusclient

Передать фокус следующему/предыдущему окну

togglemax

Развернуть на весь экран

zoom

Перенести окно в MASTER-область

togglefloating

Переключатель плавающее/tiled для отдельного окна

killclient

Закрыть окно

view

Сделать тег-аргумент текущим видом

toggleview

Добавить/удалить тэг-аргумент в текущий вид

tag

Выставить окну тег-аргумент

toggletag

Добавить/удалить тэг-аргумент клиенту

quit

выход

---

