apt-get install zathura zathura-pdf-poppler zathura-djvu zathura-ps zathura-cb

_команда написала ещё и минималистичный веб-браузер (который тоже назвается как фильм) [Jumanji](https://pwmt.org/projects/jumanji/)_

$ git clone https://git.pwmt.org/pwmt/jumanji.git

#### Конфигурационный файл Zathura находится:

- ~/.config/zathura/zathurarc

>Если его нет, то создаётся.

#### Его содержимое:

```
# zathurarc

# colors
set statusbar_bgcolor #00FF00
set statusbar_fgcolor red

# settings
set height 1024
set width 768
set adjust_open width

# key bindings
map <pageup> navigate previous
map <pagedown> navigate next

map + zoom in
map - zoom out

map <c-q> quit
```
Файл закладок создаётся автоматически при открытии первого файла и находится:

- ~/.config/zathura/bookmarks

переключение в режим оглавления и обратно: tab 

Переключение в полноэкранный режим и обратно: F11 

Режим презентации (**F5**)

Прокрутка влево, вверх, вниз, вправо: стрелки, hjkl 

Подогнать размер документа под размер окна "а"

Перейти по ссылке  "f"

Приблизить/отдалить/оригинальный размер "zI" / "zO" / "z0"

Поиск вперёд по страницам "/"

Поиск назад "?"

Следующее/предыдущее найденное слово "n" / "N"

Изменить цвет фона и текста "Ctrl-r" (белый фон черные буквы и наоборот)

Показать/скрыть статусную строку "Ctrl-n"

Показать/скрыть строку ввода команд "Ctrl-m"

Переход на N-ую страницу: NG 

просмотр разворота: d 

изменить размер: + - = 

повернуть страницу по часовой стрелке: r 

выход: q 

команды: bmark name, blist [name], bdelete name 

:bmark name -- создание закладки name, ведущей на текущую страницу 

:blist -- вывод списка закладок 

:blist name -- переход на страницу по закладке name 

:bdelete name -- удаление закладки name