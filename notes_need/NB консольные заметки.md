https://github.com/xwmx/nb#add

https://xwmx.github.io/nb/#add - Help

### Установка

Прописать в .bashrc

`export PATH=$PATH:/home/jenit/bin`

Если у вас уже есть `~/bin`например, вы можете использовать одну из следующих команд:

```
# download with wget
wget https://raw.github.com/xwmx/nb/master/nb -O ~/bin/nb && chmod +x ~/bin/nb

# download with curl
curl -L https://raw.github.com/xwmx/nb/master/nb -o ~/bin/nb && chmod +x ~/bin/nb
```
#### Зависимости

Необходимый

- [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell))
    - `nb`прекрасно работает с Zsh, fish и любой другой оболочкой, установленной в качестве основной оболочки входа в систему, в системе просто должен быть доступен Bash.
- [Git](https://git-scm.com/)
- Текстовый редактор с поддержкой командной строки, например:

>vim
>nano
>emacs
>micro
>и др.

Текстовый редактор по умолчанию: 

Прописать в .bashrc

export EDITOR=nano emacs vim

(если первым прописать vim,по умолчанию будет vim)

Рекомендуемые дополнения:

- [`bat`](https://github.com/sharkdp/bat)
- [`ncat`](https://nmap.org/ncat/)
- [`pandoc`](https://pandoc.org/)
- [`rg`](https://github.com/BurntSushi/ripgrep)
- [`tig`](https://github.com/jonas/tig)
- [`w3m`](https://en.wikipedia.org/wiki/W3m)

Чтобы корректно работал w3m(текстовой браузер) прописать в .bashrc:

`export BROWSER=/usr/bin/w3m`



Также:


[Ack](https://beyondgrep.com/), [`afplay`](https://ss64.com/osx/afplay.html), [`asciidoctor`](https://asciidoctor.org/), [The Silver Searcher (`ag`)](https://github.com/ggreer/the_silver_searcher), [`catimg`](https://github.com/posva/catimg), [Chafa](https://github.com/hpjansson/chafa), [`eza`](https://github.com/eza-community/eza), [`ffplay`](https://ffmpeg.org/ffplay.html), [ImageMagick](https://imagemagick.org/), [`glow`](https://github.com/charmbracelet/glow), [GnuPG](https://en.wikipedia.org/wiki/GNU_Privacy_Guard), [`highlight`](http://www.andre-simon.de/doku/highlight/en/highlight.php), [`imgcat`](https://www.iterm2.com/documentation-images.html), [`joshuto`](https://github.com/kamiyaa/joshuto), [kitty’s `icat` kitten](https://sw.kovidgoyal.net/kitty/kittens/icat.html), [`lsd`](https://github.com/lsd-rs/lsd), [Links](https://en.wikipedia.org/wiki/Links_(web_browser)), [Lynx](https://en.wikipedia.org/wiki/Lynx_(web_browser)), [`mdcat`](https://github.com/swsnr/mdcat), [`mdless`](https://github.com/ttscoff/mdless), [`mdv`](https://github.com/axiros/terminal_markdown_viewer), [Midnight Commander (`mc`)](https://en.wikipedia.org/wiki/Midnight_Commander), [`mpg123`](https://en.wikipedia.org/wiki/Mpg123), [MPlayer](https://en.wikipedia.org/wiki/MPlayer), [ncat](https://nmap.org/ncat/), [note-link-janitor](https://github.com/andymatuschak/note-link-janitor) (via [plugin](https://github.com/xwmx/nb/blob/master/plugins/backlink.nb-plugin)), [`pdftotext`](https://en.wikipedia.org/wiki/Pdftotext), [Pygments](https://pygments.org/), [Ranger](https://ranger.github.io/), [readability-cli](https://gitlab.com/gardenappl/readability-cli), [`rga` / ripgrep-all](https://github.com/phiresky/ripgrep-all), [`sc-im`](https://github.com/andmarti1424/sc-im), [`termvisage`](https://github.com/AnonymouX47/termvisage), [`termpdf.py`](https://github.com/dsanson/termpdf.py), [Tidy-Viewer (`tv`)](https://github.com/alexhallam/tv), [`timg`](https://github.com/hzeller/timg), [vifm](https://vifm.info/), [`viu`](https://github.com/atanunq/viu), [VisiData](https://www.visidata.org/)

### Чтобы начать, просто запустите:
```
nb
```
`nb` настраивает ваш первоначальный `home` - блокнот при первом запуске.

По умолчанию блокноты и заметки являются глобальными (по адресу `~/.nb`), поэтому они всегда доступны `nb` независимо от текущего рабочего каталога. `nb`также поддерживает [локальные блокноты](https://xwmx.github.io/nb/#global-and-local-notebooks) .

Несколько основных `nb`подкоманды имеют псевдонимы сокращений, что позволяет ускорить работу с ними:

```
# `a` (add): add a new note named "example.md"
nb a example.md

# `+` (add): add a new note titled "Example Title"
nb + --title "Example Title"

# `b` (browse): open the folder named "sample" in the web browser
nb b sample/

# `o` (open): open the URL from bookmark 12 in your web browser
nb o 12

# `p` (peek): open the URL from bookmark 6 in your terminal browser
nb p 6

# `e` (edit): edit note 5
nb e 5

# `d` (delete): delete note 19
nb d 19

# `d` (delete): delete note 123 in the notebook named "example:"
nb - example:123

# `s` (show): show note 27
nb s 27

# `q` (search): search notes for "example query"
nb q "example query"

# `h` (help): display the help information for the `add` subcommand
nb h add

# `u` (use): switch to example-notebook
nb u example-notebook
```

Чтобы получить дополнительные команды и параметры, запустите [`nb help`](https://xwmx.github.io/nb/#nb-help)или [`nb help <subcommand>`](https://xwmx.github.io/nb/#subcommands)

### Использовать

```
# create a new note in your text editor
nb add

# create a new note with the filename "example.md"
nb add example.md

# create a new note containing "This is a note."
nb add "This is a note."

# create a new note with piped content
echo "Note content." | nb add

# create a new password-protected, encrypted note titled "Secret Document"
nb add --title "Secret Document" --encrypt

# create a new note in the notebook named "example"
nb example:add "This is a note."

# create a new note in the folder named "sample"
nb add sample/
```
---

```
# create a new note containing "Note content."
❯ echo "Note content." | nb add
Added: [6] 20200101000100.md

# create a new note containing the clipboard contents on macOS
❯ pbpaste | nb add
Added: [7] 20200101000200.md

# create a new note containing the clipboard contents using xclip
❯ xclip -o | nb add
Added: [8] 20200101000300.md
```
---
[Искать](https://xwmx.github.io/nb/#-search) отмеченные элементы с помощью [`nb search`](https://xwmx.github.io/nb/#search) / [`nb q`](https://xwmx.github.io/nb/#search):

```
# search for items tagged with "#tag1"
nb search --tag tag1

# search for items tagged with "#tag1" AND "#tag2", short options
nb q -t tag1 -t tag2

# search for items tagged with "#tag1" OR "#tag2", arguments
nb q \#tag1 --or \#tag2
```
---

Использовать [`nb show`](https://xwmx.github.io/nb/#show) и [`nb browse`](https://xwmx.github.io/nb/#browse) для просмотра фрагментов кода с автоматической подсветкой синтаксиса и использования [`nb edit`](https://xwmx.github.io/nb/#edit)открыть в вашем редакторе.

---


The [`clip`Плагин](https://xwmx.github.io/nb/#clip)  также можно использовать для создания заметок из содержимого буфера обмена.

---


[`nb add`](https://xwmx.github.io/nb/#add) без аргументов или ввода откроется новая пустая заметка в предпочтительном текстовом редакторе вашей среды. Вы можете изменить свой редактор, используя `$EDITOR`переменная среды или [`nb set editor`](https://xwmx.github.io/nb/#editor).

`nb` являются [файлами Markdown](https://daringfireball.net/projects/markdown/) файлы по умолчанию . Тип файла по умолчанию можно изменить на любой, который вам нравится, используя [`nb set default_extension`](https://xwmx.github.io/nb/#default_extension).

[`nb add`](https://xwmx.github.io/nb/#add)имеет интеллектуальный анализ аргументов и ведет себя по-разному в зависимости от типов получаемых аргументов. Если указано имя файла с расширением, в редакторе открывается новая заметка с этим именем файла:

```
nb add example.md
```

Если указана строка, немедленно создается новая заметка с этой строкой в ​​качестве содержимого без открытия редактора:

```
❯ nb add "This is a note."
Added: [1] 20200101000000.md
```

[`nb add <string>`](https://xwmx.github.io/nb/#add) полезен для быстрого ведения заметок непосредственно через командную строку. Цитирование контента не является обязательным, но рекомендуется.

Если имя файла не указано, [`nb add`](https://xwmx.github.io/nb/#add)использует текущую дату и время в 
качестве имени файла.

---

Просмотр:

В фомате _markdowm_:

nb s(show) your_file.md

nb v(view) your_file.md

В текстовом формате: 

nb b(browse) your_file.md

Редактировать(редактор по умолчанию-можно настроить,прописать в .bashrc: export EDITOR=vim nano emacs)

nb e(edit) your_file.md

---

