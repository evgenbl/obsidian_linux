GNU GV — графический интерфейс пользователя к интерпретатору Ghostscript. С его помощью можно просматривать и перемещаться по документам PostScript и PDF в системе X Window.

#### В терминале запустить команду:

- $ gv name_file.ps

- $ gv name_file.pdf


### Introduction.Вступление

GNU gv позволяет просматривать документы PostScript и PDF и перемещаться по ним на X-дисплее, предоставляя пользовательский интерфейс для интерпретатора ghostscript.

Пожалуйста, обратите внимание, что gv взят из ghostview Тима Тейзена.

### Вызов gv

#### Использование:

- gv [OPTION]... [FILE]

#### Просмотр PostScript и PDF:

- -monochrome                      display document using only black and white

- -grayscale                       display document without colors

- -color                           display document as usual

- -safer                           start ghostscript in safe mode

- -nosafer                         do not start ghostscript in safe mode

- -safedir                         start ghostscript from a safe diretory

- -nosafedir                       do not start ghostscript from a safe diretory

- -quiet                           start ghostscript with the -dQUIET option

- -noquiet                         do not start ghostscript with the -dQUIET option

- -infoSilent                      do not show any messages in the info popup window

- -infoErrors                      do not show warning messages in the info popup window

- -infoAll                         do show all messages in the info popup window

- -arguments=ARGS                  start ghostscript with additional options as specified by the string ARGS

- -page=LABEL                      display the page with label LABEL first

- -center                          the page should be centered automatically

- -nocenter                        the page should not be centered automatically

- -media=MEDIA                     selects the paper size to be used

- -orientation=ORIENTATION         sets the orientation of the page

- -scale=N|f.f                     selects the scale N, or arbitrary scale f.f

- -scalebase=N                     selects the scale base N

- -swap                            interchange the meaning of the orientations landscape and seascape

- -noswap                          do not interchange the meaning of the orientation landscape and seascape

- -antialias                       use antialiasing

- -noantialias                     do not use antialiasing

- -dsc                             dsc comments are respected

- -nodsc                           dsc comments are not respected

- -eof                             ignore the postscript EOF comment while scanning documents

- -noeof                           do not ignore the postscript EOF comment while scanning documents

- -pixmap                          use backing pixmap

- -nopixmap                        do not use backing pixmap

- -watch                           watch the document file for changes

- -nowatch                         do not watch the document file for changes

- -help                            print a help message and exit

- -usage                           print a usage message and exit

- -resize                          приведите размер окна в соответствие с размером страницы

- -noresize                         не подгонять размер окна к размеру страницы

- -geometry [<width>][x<height>][{+-}<xoffset>{+-}<yoffset>]

- -ad=FILE                         чтение и использование дополнительных ресурсов из ФАЙЛА

- -style=FILE                      прочитайте и используйте дополнительные ресурсы из ФАЙЛА. Эти ресурсы имеют более
                                   низкий приоритет, чем те, которые указаны в контексте --ad

- -password=PASSWORD               Устанавливает пароль для открытия зашифрованных PDF-файлов

- -spartan                         кратчайший путь для --style=gv_spartan.dat

- -widgetless                      кратчайший путь для --style=gv_widgetless.dat

- -fullscreen                      запуск в полноэкранном режиме (требуется поддержка со стороны WM)

- -presentation                    Режим презентации (полноэкранный, по размеру окна, без виджета и без изменения размера окна)

- -version                         показать версию gv и выйти

### Key Bindings.Привязки клавиш.

#### Notation.Обозначение.

- S-X  означает нажимать Shift и key X


- C-X  означает нажимать Ctrl и key X


- SC-X  означает нажимать Shift or Ctrl и key X

#### Miscellaneous keys.Различные ключи:

- A    Включение и выключение сглаживания


- O    Откройте новый файл


- Q    Закрыть gv


- R    Переключение режима изменения размера gv


- I    Соблюдайте/игнорируйте структурирование документов


- W    Смотреть файл / Не смотреть файл


- S    Сохраните отмеченные страницы


- SC-S Сохраните текущий файл


- P    Распечатайте отмеченные страницы


- C-P  Распечатайте текущий файл


- S-P  Переключается в режим презентации, запуская новый процесс GNU gv


- c-L  Перезагрузите текущую страницу


- .    Перезагрузите текущую страницу


- SC-. Повторно откройте текущий файл


- M    Отметьте текущую страницу


- N    Снимите пометку с текущей страницы


- Z    добавьте текущую координату в файл, имя которого задано ресурсом GV.saveposFilename


- U   введите команду с текущей координатой в качестве параметра по умолчанию. По умолчанию используется % ДЛЯ выполнения \, но в Pos(x,y)(), где x,y - текущая координата, и пользователь может ввести необходимые команды в (). Эта команда добавляется к файлу, имя которого задается ресурсом GV.saveposFilename

#### Orientation.Ориентация.

7

    Orientation portrait
8

    Orientation landscape
9

    Orientation upside-down
0

    Orientation seascape


#### Magnification.Увеличение.

SC-6

    Select the scale entry -6 relative to the scale 1.0
SC-5

    Select the scale entry -5 relative to the scale 1.0
SC-4

    Select the scale entry -4 relative to the scale 1.0
SC-3

    Select the scale entry -3 relative to the scale 1.0
SC-2

    Select the scale entry -2 relative to the scale 1.0
SC-1

    Select the scale entry -1 relative to the scale 1.0
^

    Select the scale 1.0 (for german keyboard layout)
`

    Select the scale 1.0
1

    Select the scale entry 1 relative to the scale 1.0
2

    Select the scale entry 2 relative to the scale 1.0
3

    Select the scale entry 3 relative to the scale 1.0
4

    Select the scale entry 4 relative to the scale 1.0
5

    Select the scale entry 5 relative to the scale 1.0
6

    Select the scale entry 6 relative to the scale 1.0
+

    Select the next scale entry
=

    Select the next scale entry
-

    Select the previous scale entry

#### Navigating.Навигация.

Arrow

    Scroll in the direction of the arrow
S-Up

    Scroll columns up or jump -1 pages
S-Down

    Scroll columns down or jump 1 pages
S-Left

    Scroll rows left or jump -1 pages
S-Right

    Scroll rows right or jump 1 pages
C-Up

    Jump -1 pages (to top/left corner)
C-Down

    Jump 1 pages (to top/left corner)
C-Left

    Jump -5 pages (to top/left corner)
C-Right

    Jump 5 pages (to top/left corner)
D

    Identical to arrow up
X

    Identical to arrow down
Z

    Identical to arrow left
Y

    Identical to arrow left
C

    Identical to arrow right
V

    Center the page

SC-Space

    Scroll columns up or jump -1 pages
Space

    Scroll columns down or jump 1 pages
BackSpace

    Scroll columns up or jump -1 pages
Insert

    Jump -5 pages
Delete

    Jump 5 pages
Home

    Go to the first page
End

    Go to the last page
Prior

    Jump -1 pages
Next

    Jump 1 pages
Keypad 0-9

    Highlight a page number
Keypad -

    Highlight previous page number
Keypad +

    Highlight next page number
Keypad Enter

    Jump to the highlighted page
C-Enter

    Scroll columns up
S-Enter

    Scroll columns up
Enter

    Scroll columns down
B

    Jump -1 pages
F

    Jump 1 pages

