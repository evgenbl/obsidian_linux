
**Poppler** — библиотека для рендеринга [PDF](https://ru.wikipedia.org/wiki/Portable_Document_Format "Portable Document Format")-файлов. Poppler основана ([форк](https://ru.wikipedia.org/wiki/%D0%A4%D0%BE%D1%80%D0%BA "Форк")) на кодовой базе программы [Xpdf](https://ru.wikipedia.org/wiki/Xpdf "Xpdf")[[3]](https://ru.wikipedia.org/wiki/Poppler#cite_note-site-3) и разрабатывается в рамках проекта [Freedesktop.org](https://ru.wikipedia.org/wiki/Freedesktop.org "Freedesktop.org").

poppler - утилита конвертации PDF в различные форматы

Poppler является [свободным программным обеспечением](https://ru.wikipedia.org/wiki/%D0%A1%D0%B2%D0%BE%D0%B1%D0%BE%D0%B4%D0%BD%D0%BE%D0%B5_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%BD%D0%BE%D0%B5_%D0%BE%D0%B1%D0%B5%D1%81%D0%BF%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5 "Свободное программное обеспечение"), написанным на языке программирования [C++](https://ru.wikipedia.org/wiki/C%2B%2B "C++"), и предназначенным для работы в [Linux](https://ru.wikipedia.org/wiki/Linux "Linux") и других [UNIX-подобных операционных системах](https://ru.wikipedia.org/wiki/UNIX-%D0%BF%D0%BE%D0%B4%D0%BE%D0%B1%D0%BD%D0%B0%D1%8F_%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0 "UNIX-подобная операционная система").

В пакет Poppler входит несколько [консольных](https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81_%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D0%BD%D0%BE%D0%B9_%D1%81%D1%82%D1%80%D0%BE%D0%BA%D0%B8 "Интерфейс командной строки") утилит для работы с PDF-файлами:

- pdfdetach — отображает наличие и извлекает встроенные файлы.
- pdffonts — анализатор шрифтов.
- pdfimages — извлекает изображения.
- pdfinfo — отображает свойства документа.
- pdfseparate — извлечение отдельных страниц.
- pdftocairo — конвертер в форматы [PNG](https://ru.wikipedia.org/wiki/PNG "PNG"), [JPEG](https://ru.wikipedia.org/wiki/JPEG "JPEG"), PDF, [PS](https://ru.wikipedia.org/wiki/PostScript "PostScript") (PostScript), [EPS](https://ru.wikipedia.org/wiki/Encapsulated_PostScript "Encapsulated PostScript"), [SVG](https://ru.wikipedia.org/wiki/SVG "SVG") с использованием [Cairo](https://ru.wikipedia.org/wiki/Cairo "Cairo").
- pdftohtml — конвертер в [HTML](https://ru.wikipedia.org/wiki/HTML "HTML").
- pdftoppm — конвертер в изображения [PPM](https://ru.wikipedia.org/wiki/Portable_anymap "Portable anymap"), [PNG](https://ru.wikipedia.org/wiki/PNG "PNG"), [JPEG](https://ru.wikipedia.org/wiki/JPEG "JPEG").
- pdftops — конвертер в PS.
- pdftotext — конвертер в [текстовый файл](https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BA%D1%81%D1%82%D0%BE%D0%B2%D1%8B%D0%B9_%D1%84%D0%B0%D0%B9%D0%BB "Текстовый файл").
- pdfunite — объединение документов.

## poppler - утилита конвертации PDF в различные форматы


Для конвертации PDF в различные форматы можно воспользоваться poppler-utils.

poppler – это библиотека отрисовки PDF. 

Poppler — это библиотека рендеринга PDF, основанная на кодовой базе XPDF-3.0. Она используется для обработки PDF-файлов и позволяет разработчикам создавать программы для чтения и редактирования PDF-документов. 

Poppler поддерживает множество операционных систем, включая Linux, macOS и Windows.

Именно с помощью этой библиотеки мы получим доступ к инструментам для работы с файлами PDF.

В пакете содержатся основанные на Poppler инструменты командной строки для получения информации о PDF-документах, их преобразованиях в другие форматы и редактированиях.

## Конвертировать изображение в pdf.JPG в PDF в Linux с помощью ImageMagick

- $ convert *.jpg file.pdf

В poppler-utils есть несколько программ, с помощью которых можно преобразовать PDF-документ в различные форматы:

- pdftocairo — преобразование из PDF в PNG, JPEG, PDF, PS, EPS и SVG на основе Cairo;

- pdftohtml — преобразование из PDF в HTML;

- pdftoppm — преобразование из PDF в изображения PPM, PNG и JPEG;

- pdftops — преобразование из PDF в PostScript (PS);

В РЕД ОС 7.3,ALT Linux утилита установлена по умолчанию. Если по какой-то причине у вас не установлен данный пакет, то выполните команду:

- dnf install poppler-utils -y

Теперь, если вам нужно преобразовать PDF-документ в какой-либо другой формат, можно воспользоваться одной из доступных утилит. Например, преобразование PDF в PS осуществляется командой:

- pdftocairo -ps example.pdf example.ps

## Извлечение изображений из файла PDF

Процедура извлечения очень проста. Просто следуйте следующему синтаксису.

    pdfimages -all input.pdf images/prefix

Приведенная выше команда берет все изображения из входного файла input.pdf и извлекает их в тот же каталог, что и запрос. Конечно, вы можете задать абсолютный путь к месту, где находится PDF-файл, и другой путь для выходного файла.

Что касается images/prefix, то идеальным вариантом будет выбрать такой, который хорошо идентифицирует изображения, а также формат jpeg или png, из которых два PNG обеспечивают более высокое качество.

После вышесказанного команда будет выглядеть следующим образом.

    pdfimages -all input.pdf sample

В результате в каталоге будут созданы файлы изображений с такой номенклатурой sample-nnn.png.

Если вы хотите использовать jpg, то добавьте опцию -j

    pdfimages -all -j input.pdf sample

Что касается опции -j, вы можете не получить желаемых результатов

## Дополнительные опции для извлечения изображений

Приведенная выше команда извлекает все изображения, но во многих случаях мы хотим определить диапазон. Важный параметр, если файл очень длинный.

Для этого существуют опции -f и -l, которые определяют первую и последнюю страницу, с которой нужно извлечь изображения.

    pdfimages -f 1 -l 5 -png input.pdf images

Это, пожалуй, самая полезная опция, поскольку она позволяет нам ограничить выходные файлы.

Другой очень интересной опцией является параметр -p, которая включает номера страниц в имена выходных файлов.

    pdfimages -f 1 -l 5 -png -p input.pdf images

## В пакет Poppler входит несколько консольных утилит для работы с PDF-файлами:

    pdfdetach — отображает наличие и извлекает встроенные файлы

    pdffonts — анализатор шрифтов

    pdfimages — извлекает изображения

    pdfinfo — отображает свойства документа

    pdfseparate — извлечение отдельных страниц

    pdftocairo — конвертер в форматы PNG, JPEG, PDF, PS (PostScript), EPS, SVG с использованием Cairo

    pdftohtml — конвертер в HTML

    pdftoppm — конвертер в изображения PPM, PNG, JPEG

    pdftops — конвертер в PS

    pdftotext — конвертер в текстовый файл

    pdfunite — объединение документов

## Short Descriptions

- pdfattach

добавляет новый встроенный файл в существующий файл PDF 

- pdfdetach

перечисляет или извлекает встроенные файлы из файлов PDF

- pdffonts

перечисляет шрифты, используемые в файле PDF, а также различные информация для каждого шрифта 

- pdfimages
	
сохраняет изображения из файла PDF в виде файлов PPM, PBM или JPEG.

- pdfinfo

печатает содержимое словаря Info (плюс некоторые другая полезная информация) из PDF-файла 

- pdfseparate
	
извлекает отдельные страницы из файла PDF 

- pdfsig
	
проверяет цифровые подписи в PDF-документе 

- pdftocairo
	
конвертирует PDF-файл в один из нескольких форматов (PNG, JPEG, PDF, PS, EPS, SVG) с помощью устройства вывода cairo библиотека попплера 

- pdftohtml
	
конвертирует PDF-файл в HTML

- pdftoppm
	
конвертирует PDF-файлы в форматы PBM, PGM и PPM 

- pdftops
	
конвертирует PDF-файлы в формат Postscript 

- pdftotext
	
конвертирует PDF-файлы в обычный текст 

- pdfunite
	
объединяет несколько PDF-файлов в порядке их появление в командной строке в один выходной файл PDF 

- libpoppler.so
	
содержит функции API для рендеринга PDF-файлов 

- libpoppler-cpp.so
	
это серверная часть C++ для рендеринга PDF-файлов. 

- libpoppler-glib.so
	
это библиотека-оболочка, используемая для взаимодействия с рендерингом PDF. функции с GTK+

- libpoppler-qt5.so
	
это библиотека-оболочка, используемая для взаимодействия с рендерингом PDF. функции с Qt 5 

[2024-01-09 - poppler. windows](2024-01-09%20-%20poppler.%20windows.md)

[2024-01-09 - poppler. Конвертация PDF](2024-01-09%20-%20poppler.%20Конвертация%20PDF.md)
