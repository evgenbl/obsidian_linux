#+STARTUP: content

#### org-mode

#### режимы открытия org-mode

 +STARTUP: overline (все свернуто)

 +STARTUP: content  (все содержимое)

 +STARTUP: showall  (все деревья)

 +STARTUP: showeverything (все,дроиры,записки,содержимое,деревья)

#### **org-mode**

*Visibility cycling - (Циклическая видимость)*

Tab – show current

S-tab – show all children

C-u C-u C-u Tab – show all including drawers

#### Startup options

#### *Editting*

M-Ret – add element on the same level

M-S-Ret – insert TODO element

M-Right – demote current element

M-S-Right – deomote current subtree

M-Left – promote current element

M-S-Left – promote current subtree

M-S-Up – move current tree up

M-S-Down – move current tree down

C-c C-x C-w – kill current subtree

C-c C-x M-w – copy current subtree

C-c C-x C-y – yank subtree

#### Plain lists

Use M-Ret to add list item

#### Ordered list:

   1. First
   2. Second
   3. Third

#### Unordered lists

    abc
    efg

#### List with checkboxes (M-S-Ret)

    [ ] First element
    [X] Second element (C-c C-c – toggle checkbox state)
    [X] Third element

#### More devices

C-c C-z – time-stamped drawer

    Note taken on [2013-09-02 Mon 23:54]
    My note here

C-c C-x f – footnote

#### ToDo functionality

C-c C-t – rotate TODO state

S-Left, S-Right – rotate TODO state

S-M-Ret – insert new TODO note

(setq org-todo-keywords’((sequence “TODO” “FEEDBACK” “VERIFY” “|” “DONE” “DELEGATED”)))
Footnotes

[fn:1] The footnote.

[fn:2] Second footnote.

@j4ck-d4n13ls 

#### Экспорт русских текстов в PDF из Emacs org-mode

И вот когда все было готово к экспорту, возникла проблема, что по с настройками по умолчанию русские символы не отображаются в полученном pdf.

После поисков было найдено следующее решение:

 #+latex_header: \usepackage[utf8x]{inputenc}

 #+latex_header: \usepackage[T2A]{fontenc}

 #+latex_header: \usepackage[russian,english]{babel}

 #+latex_header: \usepackage[unicode, colorlinks=true]{hyperref}

Эти строки добавляются в начало файла и означают какие дополнительные пакеты нужно загрузить процессору LaTeX для формирования pdf (Это связано с тем, что сначала Emacs делает *.tex файл, а потом перегоняет его в PDF).

#### преамбула latex in emacs org-mode

#+latex_header: \documentclass[12pt,a4paper]{article}

#+latex_header: \usepackage[warn]{mathtext}

#+latex_header: \usepackage[T2A]{fontenc}

#+latex_header: \usepackage[utf8x]{inputenc}

#+latex_header: \usepackage[english, russian]{babel}

#+latex_header: \usepackage{indentfirst}   

#+latex_header: \usepackage{misccorr}

#+latex_header: \usepackage{cmap}         

#+latex_header: \usepackage{graphicx}

#+latex_header: \usepackage{psfrag}

#+latex_header: \usepackage{caption2}

#+latex_header: \usepackage{soul}

#+latex_header: \usepackage{soulutf8}

#+latex_header: \usepackage{fancyhdr}

#+latex_header: \usepackage{multirow}

#+latex_header: \usepackage{ltxtable}

#+latex_header: \usepackage{paralist}

#+latex_header: \usepackage[perpage]{footmisc}

#+latex_header: \usepackage{amsmath}

#+latex_header: \usepackage{amsfonts}

#+latex_header: \usepackage{amssymb}

#+latex_header: \usepackage{floatflt}

#+latex_header: \usepackage[a4paper, top=10mm, left=10mm, right=10mm, bottom=25mm]{geometry}

#+latex_header: \usepackage[unicode, colorlinks=true]{hyperref}

#+latex_header: \usepackage{xcolor}

#+latex_header: \usepackage{hyperref}

#+latex_header: \hypersetup{colorlinks, pdftitle={The title of your document},pdfauthor={Your name}, allcolors=[RGB]{010 090 200}}

#### HTML export commands

C-c C-e h h (org-html-export-to-html)

    Export as HTML file with a ‘.html’ extension. For ‘myfile.org’, Org exports to ‘myfile.html’, overwriting without warning. {{{kbd{C-c C-e h o)}}} exports to HTML and opens it in a web browser.

C-c C-e h H (org-html-export-as-html)

    Exports to a temporary buffer. Does not create a file. 

#### LaTeX/PDF export commands

C-c C-e l l (org-latex-export-to-latex)

    Export to a LaTeX file with a ‘.tex’ extension. For ‘myfile.org’, Org exports to ‘myfile.tex’, overwriting without warning.
C-c C-e l L (org-latex-export-as-latex)

    Export to a temporary buffer. Do not create a file.
C-c C-e l p (org-latex-export-to-pdf)

    Export as LaTeX file and convert it to PDF file.
C-c C-e l o

    Export as LaTeX file and convert it to PDF, then open the PDF using the default viewer.
M-x org-export-region-as-latex

    Convert the region to LaTeX under the assumption that it was in Org mode syntax before. This is a global command that can be invoked in any buffer. 

#### Org export commands

C-c C-e O o (org-org-export-to-org)

    Export as an Org file with a ‘.org’ extension. For ‘myfile.org’, Org exports to ‘myfile.org.org’, overwriting without warning.

C-c C-e O v (~~)

    Export to an Org file, then open it. 

#### note

c - c;c - z  создать todo

c - c;c - c  сохранить todo

c - c;c - k  удалить todo

#### footnote

c - c;c - x;f  создать footnote

#### vim from txt in pdf

Вы можете распечатать текст в файл PostScript с помощью Vim, а затем преобразовать его в PDF, если Vim был скомпилирован с этой +postscript функцией.

Для этого вы используете :hardcopy > {filename}команду. Например, вы можете открыть example.txt и выполнить

:hardcopy > example.ps

который создаст файл, example.psсодержащий весь текст в example.txt. Заголовок каждой страницы в файле PostScript будет содержать исходное имя файла и номер страницы.

Затем вы можете преобразовать файл PostScript в PDF, используя следующую команду

ps2pdf example.ps

который создаст example.pdf.

Вы можете сделать то же самое прямо из терминала (без взаимодействия с Vim), используя следующую команду

vim example.txt -c "hardcopy > example.ps | q"; ps2pdf example.ps

Это открывает example.txtв Vim и выполняет команду, переданную -cопции, которая в этом случае является hardcopyкомандой, сопровождаемой командой quit ( q). Затем он выполняет ps2pdfдля создания окончательного файла.

Дополнительные параметры см. В файлах справки с :help :hardcopy.

#### Установка Sublime Text 3 + LaTeX

    Скачиваем и устанавливаем Sublime Text 3
    Скачиваем и устанавливаем Sumatra PDF. Эта легковесная программа позволяет просматривать PDF-документы, DJVU, FB2 и т.д.
    Запустив Sublime Text, откройте командную строку нажатием Ctrl+shift+p и начинайте вводить Package Control: Install Package, а когда он появится — щёлкните и дождитесь установки связи с репозиториями
    Если же по каким-то причинам Package Control отсутствует, откройте консоль нажатием *ctrl+` (Ё) и скопируйте туда заклинание на парселтанге, которое можно найти на странице плагина Package Control, нажмите Enter и перезапустите Sublime Text.
    В списке плагинов вводите LaTeXTools и, при появлении его в списке, щёлкните и дождитесь, пока пройдет установка.
    Далее инициируем настройки по умолчанию: Preferences/ Package Settings/ LaTeXTools/ Reset user settings to default, а затем там же Check System
    Если все надписи позеленели, значит Sublime Text подружился с Sumatra и LaTeX, и теперь можно создавать или редактировать tex-документы. При нажатии ctrl+В происходит трансляция и, если нет ошибок, открывается свёрстанный PDF. Ctrl+shift+В — выбор типа сборки.

#### Ссылки в другие места(todo)

Для того что бы создать ссылку достаточно использовать такой шаблон         [[ссылка][описание] ]

Для создания ссылки можно ещё использовать комбинацию C+c C+l. В мини-буфере emacs предложит сначала написать ссылку, затем после нажатия RET — её создать. Находясь в мини-буфере так же можно нажать TAB, для просмотра, какие виды ссылок бывают.

Что бы открыть вновь созданные ссылки необходимо навести точку на ссылку и тыкнуть C+c C+o. Или C+u C+c C+o — если Вы хотите открыть её в другом окне.

Ради интереса, можно перейти в другой файл, нажать там C+c l. И ссылка на этот файл поместится в хранилище ссылок. Перейдя в любой наш файл .org мы можем извлечь из этого хранилища любые сохраненные ссылки, с помощью той же команды C+c C+l.

#### календарь

Давайте попробуем навести курсор на любую задачу. При нажатии C+c C+s откроется календарь, где мы сможем выбрать любую дату

После того как мы это сделаем и нажмем RET, под задачей появится пометка, «запланировано»(SCHEDULED), с датой:

Так же мы можем использовать C+c C+d, для обозначения «крайних сроков»(DEADLINE), по аналогичному принципу.

Теперь сохраним наш файл и нажмем C+c a a. Будет отображено расписание на эту неделю:

Теперь можем нажать l (как Leonid), что бы включить вид «log». Будет это выглядеть примерно так:

