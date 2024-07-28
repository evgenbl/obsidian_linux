### Такой метод конвертации:

    pandoc -o sample.html sample.md

    pandoc -o sample.odt sample.md

    pandoc -o sample.txt sample.md

    pandoc -f markdown -t latex -s -o sample.tex sample.md

    -o (out) выходной формат файла

    ( -f (от) и -t (для) варианты используются, чтобы сказать pandoc какие
    форматы файлов вы хотите конвертировать из и в )

    pdflatex main.tex - from terminal make pdf

### Для создания PDF-файла укажите выходной файл с .pdf-расширением:

    pandoc test.txt -o test.pdf

    or

    pandoc test.txt -V lang=RU-ru -o test.pdf

***или лучше так,с указанием шрифта***:

    pandoc --pdf-engine=xelatex -V 'mainfont:Arial' -t beamer test.txt -o test.pdf

*(нужен установленный шрифт **Arial**)*

*По умолчанию pandoc будет использовать LaTeX для создания PDF, для чего требуется установить механизм LaTeX*    

### Для преобразования hello.html из HTML в Markdown:

    pandoc -f html -t markdown hello.html

---

#### Создание pdf в терминале

pdflatex -simple.tex

---





