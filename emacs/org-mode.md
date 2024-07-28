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


# org-mode

####Файл с расширением <u>org-mode</u> - это текстовой файл и кроме <u>emacs</u> может открываться любым текстовым редактором.
Если простым языком - <u>**org-mode**</u> это организатор заметок как <u>**OneNote**</u> в <u>**Windows**</u>.

<u>**Сокращения:**</u>

- M - Alt

- S - Shift

- C - Ctrl

- RET - Enter

### *режимы открытия org-mode*

 <u>+STARTUP: overline (все свернуто)</u>
 
 <u>+STARTUP: content  (все содержимое)</u>
 
 <u>+STARTUP: showall  (все деревья)</u>
 
 <u>+STARTUP: showeverything (все - записки,содержимое,деревья)</u>

## org-mode

### *Раскрытие вкладок*

- Tab – раскрыть вкладку

- S-tab – раскрыть все вложенные вкладки

- C-u C-u C-u Tab – раскрыть все(note,TODO,списки,сноски)

###*Редактирование*

- M-Ret – add element on the same level

- M-S-Ret – insert TODO element

- M-Right – demote current element

- M-S-Right – deomote current subtree

- M-Left – promote current element

- M-S-Left – promote current subtree

- M-S-Up – move current tree up

- M-S-Down – move current tree down

- C-c C-x C-w – kill current subtree

- C-c C-x M-w – copy current subtree

- C-c C-x C-y – yank subtree

### *Простые списки*

Используйте **M-Ret** для добавления элемента списка

### *Упорядоченный список:*

1. First
   
2. Second
   
3. Third
   

### *Неупорядоченные списки:*

<blockquote>a</blockquote>

<blockquote>*</blockquote>
 
<blockquote>-</blockquote>

### *Список с флажками* (M-S-Ret)

- [ ] First element***

- [X] Second element (C-c C-c – toggle checkbox state)***
   
- [X] Third element***

### *Больше свойств:*

- C-c C-z –   заметка с отметкой времени

- *Note taken on [2013-09-02 Mon 23:54]* 

- *My note here*

### *Footnotes (Сноски)*

- C-c C-x f – footnote

- [fn:1] The footnote.

- [fn:2] Second footnote.

### *note(TODO)* 

- c - c; c - z  создать todo

- c - c; c - c  сохранить todo

- c - c; c - k  удалить todo


### *Функциональность ToDo*

- C-c C-t – rotate TODO state

- S-Left, S-Right – rotate TODO state

- S-M-Ret – insert new TODO note

#### *Ссылки в другие места(todo)*

*Для того что бы создать ссылку достаточно использовать такой шаблон* 

- [[ссылка][описание] ]


### **<u>HTML export commands</u>**

- C-c C-e h h (org-html-export-to-html)
- C-c C-e h H (org-html-export-to-htm-buffer)
- C-c C-e h o (org-html-as-to-html-open)

**<u>Export as HTML file with a ‘.html’ extension. For ‘myfile.org’, Org exports to ‘myfile.html’, overwriting without warning. {{{kbd{C-c C-e h o)}}} exports to HTML and opens it in a web browser.</u>**

- C-c C-e h H (org-html-export-as-html)
  
 
#### *Org export commands*

 <u>Export as an Org file with a ‘.org’ extension. For ‘myfile.org’,
    Org exports to ‘myfile.org.org’, overwriting without warning.</u>

- C-c C-e O o (org-org-export-to-org)

<u>Export to an Org file, then open it.</u>

  - C-c C-e O v (~~)

Для создания ссылки можно ещё использовать комбинацию **C+c C+l**. В мини-буфере emacs предложит сначала написать ссылку, затем после нажатия **RET** — её создать. Находясь в мини-буфере так же можно нажать **TAB**, для просмотра, какие виды ссылок бывают.

Что бы открыть вновь созданные ссылки необходимо навести точку на ссылку и тыкнуть **C+c C+o**. Или **C+u C+c C+o** — если Вы хотите открыть её в другом окне.

Ради интереса, можно перейти в другой файл, нажать там **C+c l**. И ссылка на этот файл поместится в хранилище ссылок. Перейдя в любой наш файл .org мы можем извлечь из этого хранилища любые сохраненные ссылки, с помощью той же команды **C+c C+l**.

#### *календарь*

Давайте попробуем навести курсор на любую задачу. При нажатии **C+c C+s** откроется календарь, где мы сможем выбрать любую дату

После того как мы это сделаем и нажмем **RET**, под задачей появится пометка, <u>«запланировано»</u> **(SCHEDULED)**, с датой.

Так же мы можем использовать **C+c C+d**, для обозначения <u>«крайних сроков»</u> **(DEADLINE)**, по аналогичному принципу.

**Теперь сохраним наш файл и нажмем** 

Будет отображено расписание на эту неделю.

- C+c a a 

##**LaTeX/PDF export commands**

<u>Export to a LaTeX file.</u>

- C-c C-e l l  <u>(org-latex-export-to-latex)</u>

<u>Export to a temporary buffer. Do not create a file.</u>

- C-c C-e l L  <u>(org-latex-export-as-latex)</u>

<u>Export as LaTeX file and convert it to PDF file.</u>.

- C-c C-e l p  <u>(org-latex-export-to-pdf)</u>

<u>Export as LaTeX file and convert it to PDF, then open the PDF using the default viewer.</u>

- C-c C-e l o

#### *Экспорт русских текстов в PDF из Emacs org-mode*

И вот когда все было готово к экспорту, возникла проблема, что по с настройками по умолчанию русские символы не отображаются в полученном **pdf**. После поисков было найдено следующее решение:

- *#*+latex_header: \usepackage[utf8x]{inputenc}

- *#*+latex_header: \usepackage[T2A]{fontenc}

- *#*+latex_header: \usepackage[russian,english]{babel}

- *#*+latex_header: \usepackage[unicode, colorlinks=true]{hyperref}

Эти строки добавляются в начало файла и означают какие дополнительные пакеты нужно загрузить процессору LaTeX для формирования **pdf** (Это связано с тем, что сначала **Emacs** делает **(*.tex)** файл, а потом перегоняет его в **PDF**).

#### *преамбула latex in emacs org-mode*

- *#*+latex_header: \documentclass[12pt,a4paper]{article}

- *#*+latex_header: \usepackage[warn]{mathtext}  
      
- *#*+latex_header: \usepackage[T2A]{fontenc} 
           
- *#*+latex_header: \usepackage[utf8x]{inputenc} 
        
- *#*+latex_header: \usepackage[english, russian]{babel}

- *#*+latex_header: \usepackage{indentfirst} 
  
- *#*+latex_header: \usepackage{misccorr} 
     
- *#*+latex_header: \usepackage{cmap}  
       
- *#*+latex_header: \usepackage{graphicx} 
    
- *#*+latex_header: \usepackage{psfrag} 
      
- *#*+latex_header: \usepackage{caption2} 
     
- *#*+latex_header: \usepackage{soul}  
        
- *#*+latex_header: \usepackage{soulutf8}
      
- *#*+latex_header: \usepackage{fancyhdr}  
    
- *#*+latex_header: \usepackage{multirow}  
   
- *#*+latex_header: \usepackage{ltxtable}  
    
- *#*+latex_header: \usepackage{paralist}  
    
- *#*+latex_header: \usepackage[perpage]{footmisc}

- *#*+latex_header: \usepackage{amsmath}

- *#*+latex_header: \usepackage{amsfonts}

- *#*+latex_header: \usepackage{amssymb}

- *#*+latex_header: \usepackage{floatflt}  
    
- *#*+latex_header: \usepackage[a4paper, top=10mm, left=10mm, right=10mm, bottom=25mm]{geometry}

- *#*+latex_header: \usepackage[unicode, colorlinks=true]{hyperref}

- *#*+latex_header: \usepackage{xcolor}

- *#*+latex_header: \usepackage{hyperref}

- *#*+latex_header: \hypersetup{colorlinks, pdftitle={The title of your document},pdfauthor={Your name}, allcolors=[RGB]{010 090 200}}


<img src="/home/jenit/md/emacs org-mode/emacs org-mode.png" alt = "emacs org-mode" width="680" align = center>

<center>
<i>**emacs org-mode**</i>
</center>

<img src="/home/jenit/md/emacs org-mode/emacs kwrite.png" alt = "emacs kwriter" width="680" align = center>

<center>
<i>**emacs kwriter**</i>
</center>
