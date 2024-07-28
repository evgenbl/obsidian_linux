### org-mode-->html

<head>
   <style>
         h1 {
			text-align: center; /* горизонтальное выравнивание текста по центру */
            color: #FFFFFF;
			background-color: #3C33FF;
			margin-top: 0px;
			margin-bottom: 1px;
            border: 1px solid red;
          }

                 h2 {
			text-align: center; /* горизонтальное выравнивание текста по центру */
            color: #FFFFFF;
			background-color: #3C33FF;
			margin-top: 0px;
			margin-bottom: 1px;
            border: 1px solid red;
          }

   </style>
</head>

---

#+TITLE:

#+AUTHOR:

#+OPTIONS: toc:nil num:nil

#+SETUPFILE: https://fniessen.github.io/org-html-themes/org/theme-readtheorg.setup

- Ctrl+c Ctrl+e  вход в меню конвертации org-mode

[org-->html_style](https://www.youtube.com/watch?v=8Gw4Y2EpcOY&list=PLSxeivFT4JIrx6rwQB8VpSs3YeyTFuSwk&index=3)

---

### org-->LaTeX-->pdf

Оргмод может преобразовывать документ в формат TeX с возможностью последующей компиляцией в формат pdf.

Для этого вводится клавиатурная комбинация:

C-c C-e l (и далее варианты, например, чтобы получить pdf и открыть его нужно выбрать вариант o).

### Basic Export

#+LATEX_CLASS: article

#+LATEX_CLASS_OPTIONS: [letterpaper]

#+OPTIONS: toc:t

Чтобы сделать переносы слов в полученном файле pdf, в документе орг необходимо указать параметр

#+LATEX_HEADER: \usepackage[russian]{babel}, что подключает LaTeX пакет babel.

Также, чтобы обеспечить поддержку русского языка в LaTeX в начале орг-документа необходимо включить параметр:

#+LATEX_HEADER: \usepackage [T1,T2A]{fontenc}

и

#+LATEX_HEADER: \usepackage[utf8]{inputenc}.

Однако, в получаемом при компиляции файле pdf переносов не будет до тех пор пока в орг документе не будет введён еще один параметр:

#+LANGUAGE: russian

Этот параметр указывает пакету babel, что текст русский, и переносы должны использоваться именно для русских слов.

Author:

Create: 2024-


[LaTeX-->html_style](https://www.youtube.com/watch?v=0qHloGTT8XE&list=PLSxeivFT4JIrx6rwQB8VpSs3YeyTFuSwk&index=2)

Преамбула в org_file

#+TITLE: Org LaTeX

#+SUBTITLE: /Test PDF Emacs/

#+AUTHOR: С миру по нитке...

#+SETUPFILE: /home/jenit/notes/emacs/latex-pdf-themes-master/latex-standard.setup

---

#+TITLE: Org LaTeX
#+SUBTITLE: /Test PDF Emacs/
#+AUTHOR: С миру по нитке...
#+SETUPFILE: /home/jenit/notes/emacs/latex-pdf-themes-master/latex-standard.setup

---
