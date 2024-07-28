### Горячие клавиши vim

#### Самые главные команды:

> **vim** <’имя файла’> **открыть файл в терминале**
> 
> **:q** - выйти из vim(закрыть)
> 
> **:wq** - записать(сохранить документ) и выйти
> 
> **:q!** - выйти без сохранения
> 
> **:w** - сохранить файл;
> 
> **:buffers** - посмотреть открытые файлы.
> 
   Ctrl+P - оно с буферами умеет работать, с недавно открывавшимися файлами и интуитивно понятно работает.

#### _Это тоже может очень пригодится:_

> **_Из внешнего документа скопировать текст_** - **ctrl+c**
> 
> и вставить в **_vim_** - **ctrl+shift+v**,
> 
> or 
>
> **shift+insert**(предпочтительнее)
> 
> из **_vim_** копировать в др.документ - **shift+выделить текст**,
> 
> вставить в др.документе - **нажать среднюю кнопку мыши** или **ctrl+v**.

**_Работает в Ubuntu 20,Slackware 15 - точно!_**

**_Будут нужны установленные xclip,xsel_**

#### Перемещение по тексту(нормальный режим):

**h** - Влево

**l(L)** - Вправо

**j** - Вниз

**k** - Вверх

**w** - Вперед на первую букву слова

**e** - Вперед на последнюю букву слова

**b** - Назад на первую букву слова

**ge** - Назад на последнюю букву слова

```
d - удалить символ;
dd - удалить всю строку;
D - удалить символы начиная от курсора и до конца строки;
y - копировать символ;
yy или Y - скопировать всю строку;
v - выделить текст;
p - вставить после позиции курсора;
P - вставить перед позицией курсора;
u - отменить последнее действие;
. - повторить еще раз последнее действие;
U - отменить последнее действие в текущей строке;
/шаблон - искать вхождение;
%s/шаблон/заменить - заменить первое слово на второе;
n - продолжить поиск вперед;
N - продолжить поиск назад;
```

**W** - То, же, что и w, но словом считается то, что отделено пустыми символами

**E** - То, же, что и e, но словом считается то, что отделено пустыми символами

**B** - То, же, что и b, но словом считается то, что отделено пустыми символами

**gE** - То, же, что и ge, но словом считается то, что отделено пустыми символами ^ На первый непустой символ строки

**$**, - End На конец строки

**0** - (ноль), Home На начало строки

**(** - На первую точку слева от курсора (если она есть, в противном случае на начало абзаца)

**)** - На первую точку справа от курсора (если она есть, в противном случае на конец абзаца)

**{** - На абзац назад до пустой строки

**}** - На абзац вперед до пустой строки

**gj** - На одну экранную строку вниз. Экранная строка — это целая строка длиной меньше ширины экрана, либо часть длинной строки, разделенной на экране на несколько

**gk** - На одну экранную строку вверх.

**f#** - Поиск вперед в строке символа # и установка курсора на него

**F#** - Поиск назад в строке символа # и установка курсора на него

**t#** - Поиск вперед в строке символа # и установка курсора после него

**T#** - Поиск назад в строке символа # и установка курсора после него

**;** - Повтор поиска вперед символа, найденного при помощи f/t/F/T

**,** - Повтор поиска назад символа, найденного при помощи f/t/F/T

**%** - Перемещение курсора на скобку, парную той, на которой находится курсор. Парные символы можно задать при помощи команды:

**:set matchpairs**

**:№** - Перемещение курсора на строку №…

**№G** - Перемещение курсора на строку №…, аналогично :№…

**gg** - Перемещение курсора в начало

**G** - Перемещение курсора в конец

**№%** - Перемещение курсора на №… процентов от начала

**H** - Перемещение курсора на начало видимой части текста

**M** - Перемещение курсора на середину видимой части текста

**L** - Перемещение курсора на конец видимой части текста

**Control+u** - На полэкрана вверх

**Control+d** - На полэкрана вниз

**Control+y** - На одну строку вверх. Курсор при этом не перемещается

**Control+e** - На одну строку вниз. Курсор при этом не перемещается

**Control+b** - На один экран минус 2 строки вверх

**Control+f** - На одну экран минус 2 строки вниз

**zt** - Прокрутка текста так, чтобы курсор оказался вверху экрана

**zz** -Прокрутка текста так, чтобы курсор оказался в середине экрана

**zb** - Прокрутка текста так, чтобы курсор оказался внизу экрана

#### В обычном режиме:

> _«_ Сдвинуть строку влево (табуляция)

> _»_ Сдвинуть строку вправо (табуляция)

#### Режим выделения:

**v** - Войти в режим выделения символов

**V** - Войти в режим выделения строк

**Control+Shift+v** - Войти в режим выделения прямоугольного блока текста

**gv** - Выделяет текст, который был выделен предыдущей командой выделения

**o** - Перемещение курсора в области блочного выделения для изменения размера влево

**O** - Перемещение курсора в области блочного выделения для изменения размера вправо

**I** - Включить вставку символов в блочном выделении. После нажатия I набираются символы, а по окончании нажимаете Escape. Все набранные символы будут вставлены в каждую строку

**с** - Аналогично I, но перед вставкой символов удаляет всё, что было выделено блоком

**с** - Аналогично I, но перед вставкой символов удаляет всё от левого края выделения до конца строки

**u** - Изменить регистр выделенных символов на нижний

**U** - Изменить регистр выделенных символов на верхний

**~** - Изменить регистр выделенных символов на противоположный

**J** - Объединить все строки, находящиеся в области выделения

**r** - Заменить все символы на введенный после r, например rx заменит все символы в области выделения на x

**<** - Сдвинуть выделенный блок влево (табуляция)

**>** - Сдвинуть выделенный блок вправо (табуляция)

#### Работа с буфером обмена:

**«*yy** - Скопировать строку в буфер обмена текущего выделения. Потом можно вставить скопированное в любом приложении нажатием средней кнопки (колесика) мыши

**«+yy** - Скопировать строку в буфер обмена. Потом можно вставить скопированное в любом приложении нажатием Ctrl+v

**«ayy** - Скопировать строку в регистр a (имена регистров соответствуют буквам латинского алфавита, возможны имена a-z)

**«Ayy** - Добавить строку в регистр a

**«ap** - Вставить текст из регистра a

#### Метки:

**mx** - Создать метку с именем x

**`x** - Переместить курсор на метку x

**‘x** - Переместить курсор на строку с меткой x

**:marks** - Просмотреть все существующие в данный момент метки

**Ctrl+Shift+o** - Перемещение по меткам назад

**Ctrl+Shift+i** - Перемещение по меткам вперед

**‘ ‘** - Переместить курсор на предыдущую метку

#### Поиск:

**/** - Войти в режим ввода выражения для поиска. В vim можно использовать при поиске регулярные выражения, при этом символы «.», «*», «[«, «]», «^», «%», «/», «\», «?», «~», «$» являются специальными и их обязательно надо экранировать обратным слэшем («\»)

**noh** - выйти из режима поиска,выключит подсветку найденого.

**?** - То же, что и /, но поиск будет производиться в обратном порядке

**n** - Повторить поиск вперед

**N** - Повторить поиск назад

**(*)** - Поиск слова, на котором стоит курсор, вперед, со строгим соответствием(звездочка без скобок)

**#** - Поиск слова, на котором стоит курсор, назад, со строгим соответствием

**(g*)** - Поиск слова, на котором стоит курсор, вперед, с нестрогим соответствием, то есть, если курсор на слове win, то будет найдено также слово winter

**g#** - Поиск слова, на котором стоит курсор, назад, с нестрогим соответствием /выражение\c Поиск слова без учета регистра, независимо от настроек **vim**. Переключать учет регистра можно командами «:**set ignorecase» и «:set noignorecase**»

**<** - Обозначение начала слова при поиске. /\

** >** - Обозначение конца слова при поиске. **win** — найти только /<win>., но не **winter**

**/выражение/b+1** - Найти выражение и установить курсор на символ +1 от начального, то есть на второй

**/выражение/e-3** - Найти выражение и установить курсор на символ -3 от конечного

**?выражение?b+1** - То же, что и /выражение/b+1, но с поиском в обратную строну

**?выражение?e-3** - То же, что и /выражение/e-3, но с поиском в обратную строну стрелка вверх При вводе строки для поиска просмотр истории поиска выражений, начинающихся с того, что уже набрано

#### Давайте подытожим список основных команд, используемых при работе с окнами в Vim.

**:split** или **Ctrl+w s** — добавляет в сессию Vim горизонтальное окно

**:vsplit** или **Ctrl+w v** — добавляет в сессию Vim вертикально окно

**:split filename** — добавляет в сессию Vim горизонтальное окно и загружает в него filename

**:vsplit filename** — добавляет в сессию Vim вертикальное окно и загружает в него filename

**Ctrl+w h**— переключает на левое окно, относительно текущего

**Ctrl+w l** — переключает на правое окно, относительно текущего

**Ctrl+w j** — переключает на нижнее окно, относительно текущего

**Ctrl+w k** — переключает на верхнее окно, относительно текущего

**Ctrl+w** **Ctrl+w** — переключает на следующее окно

**Ctrl+w r** — передвигает окна по часовой стрелке

**Ctrl+w R** — передвигает окна против часовой стрелки

**Ctrl+w c** — закрывает текущее окно

**Ctrl-w стрелочки :)** — переместиться на окно влево/вправо/вверх/вниз

**Сtrl-w o** — развернуть окно

**Ctrl-w c** — закрыть

**Ctrl-w s** — разделить окно по горизонтали

**Ctrl-w v** — тоже, только по вертикали

**Ctrl+w +** — увеличение размера окна по горизонтали;

**Ctrl+w —** — уменьшение размера окна по горизонтали;

**Ctrl+w >** — увеличение размера окна по вертикали;

**Ctrl+w <** — уменьшение размера окна по вертикали;

**Ctrl-w ]** — разделить и перейти на определение чего-то, что под курсором

**Ctrl-w f** — разделить и в новом окне открыть файл путь к которому находится под курсором, очень удобно делать на инклюдах

#### Команды:

**:split** — разделить, если указан файл то открыть его

**:vsplit** — тоже только по вертикали

**:sb[uffer**] — разделить и редактировать буффер. Важный момент: если заново открыть файл (к примеру через **:split**) то буфер сбрасывается, вместе с историей отмен и положением курсора

#### Давайте подытожим список команд для работы с вкладками:

**vim -p filename1 filename2** — запустит **Vim** и откроет (или создаст новые) файлы **filename1** и **filename2** в двух вкладках

**:tabnew** — откроет пустую вкладку

**:tabnew filename**— откроет новую вкладку и загрузит (создаст новый) в ней файл filename

**gt** — переключит на следующую вкладку

**gT** — переключит на предыдущую вкладку

**:tabc** — закроет текущую вкладку

> И так, буфер это некий сеанс редактирования определённого файла. К примеру если вы открыли **.vimrc** и в запущенном виме выполнели **:e .bashrc**, то откроется **.bashrc**. Тем не менее буфер с **.vimrc** останется открытым и доступным для редактирования. Вот основные команды для работы с буферами:

**:bn** - следующий буфер

**:bp** - предыдущий

**:ls** - просмотреть открытые буферы

**:b** - имя_буфера переключиться на буфер, очень удобно комбинируется с табом, к примеру пишем **:b domain**, жмём таб и нам подставляется открытый **iis_domain.cpp**

**:bd** - удалить текущий буфер, правда стоит заметить, что если этот буфер единственное окно то **vim** закроется

**:bd** - имя_буфера удалить буфер по имени

---

#### МИНИМАЛЬНЫЕ ОСНОВЫ

На данный момент существует две версии редактора - vi и vim. Vim расшифровывается как Vi Improved, улучшенный vi. Это новая версия, которая принесла очень много улучшений. В большинстве современных дистрибутивов используется именно она. Поэтому если я буду писать vi, это значит, что я предполагаю использование vim. Текстовый редактор Vim может работать в двух режимах. Это и есть его главная особенность. Первый режим, который используется по умолчанию при открытии редактора - это командный. В этом режиме вы можете вводить команды vi, а также использовать символьные клавиши для управления редактором. Второй режим - обычное редактирование текста, он работает так же как и редактирование текста в nano. Для переключения в командный режим используется клавиша Esc. Для переключения в режим редактирования - клавиша i. Если вас интересует только как в редакторе vi сохранить и выйти, листайте вниз, но если вы хотите узнать как пользоваться текстовым редактором vim, эта статья для вас. Перед тем как идти дальше я бы посоветовал вам пройти курс обучения встроенный в редакторе. Выполнение всех обучающих заданий займет 25-30 минут. Но после того как вы освоите все что там написано, эта статья поможет вам закрепить материал. Дело в том, что команд и сочетаний клавиш у vim очень много и запомнить их все без практики невозможно. Для запуска обучения наберите:

> vimtutor

Но делать это сейчас необязательно, в этой статье есть вся необходимая базовая информация и после ее прочтения вы уже сможете уверенно пользоваться vim, а обучение пройти чуть позже.

#### КАК ИСПОЛЬЗОВАТЬ РЕДАКТОР VIM

Начнем мы, как обычно с запуска программы, а также опций, которые ей можно передать. Синтаксис Vim очень прост:

> $ vim опции имя_файла

Или:

> $ vi опции имя_файла

Простой запуск vim без указания имени файла приведет к созданию пустого файла. А теперь давайте рассмотрим основные опции запуска:

• +номер - переместить курсор к указной строке после запуска.

• +/шаблон - выполнить поиск по шаблону и переместить курсор к первому вхождению

• “+команда” - выполнить команду после запуска программы

• -b - двоичный режим, для редактирования исполняемых файлов.

• -d - режим поиска различий в файлах, нужно указать несколько файлов для открытия.

• -g - графический режим.

• -n - не использовать автосохранение для восстановления файла при сбое.

• -R - режим только для чтения.

• -w - сохранить все действия в файл.

• -x - шифровать файл при записи.

• -C - режим совместимости с Vi.

Круто, правда? Но это только начало. Опции ничего по сравнению с командами редактора.

#### КОМАНДНЫЙ РЕЖИМ VIM

В командном режиме вы можете перемещаться по редактируемому тексту и выполнять действия над ним с помощью буквенных клавиш. Именно этот режим открывается по умолчанию при старте редактора. Здесь вы будете использовать краткие команды, перед которыми может устанавливаться номер, чтобы повторить команду несколько раз. Для начинающих может быть поначалу очень запутанно то, что в командном режиме символы интерпретируются как команды.

Для перемещения используются такие команды:

• h - на один символ влево;

• l - на один символ вправо;

• j - на одну строку вниз;

• k - на одну строку вверх;

• w - на слово вправо;

• b - на слово влево;

• H - перейти в низ экрана;

• G - перейти в конец файла;

Можете запустить редактор и поэкспериментировать, чтобы было легче понять как это работает. Если перед тем как нажать кнопку буквы нажать цифру, то эта команда будет повторена несколько раз. Например, 3j переведет курсор на три строки вверх.

Для переключения в режим редактирования используются такие команды:

• i - вставить текст с позиции курсора, символ под курсором будет заменен;

• I - вставить текст в начало строки;

• a - добавить текст начиная от позиции курсора;

• o - вставить новую строку после этой и начать редактирование;

• O - вставить новую строку перед этой и начать редактирование;

• r - заменить текущий символ;

• R - заменить несколько символов.

К этим командам тоже применимы символы повторения. Поэкспериментируйте, можно получить интересный и не совсем ожиданий результат. Более сложны команды редактирования текста. Вы можете править текст не только в обычном режиме, но и в командном с помощью команд.

Для этого применяются такие команды:

• d - удалить символ;

• dd - удалить всю строку;

• D - удалить символы начиная от курсора и до конца строки;

• y - копировать символ;

• yy или Y - скопировать всю строку;

• v - выделить текст;

Эти команды редактора vim работают немного по-другому после нажатия одной из них ничего не произойдет. Мы еще можем задать количество символов, к которым будет применена команда и направление, с помощью кнопок перемещения курсора. Например, чтобы удалить два символа справа от курсора нажмите d3l, а чтобы удалить три строки вниз - d3j. Команды yy, dd, Y - не что иное, как сокращения.

Кроме этих команд, есть еще несколько полезных, которые мы не можем не рассмотреть:

• p - вставить после позиции курсора;

P - вставить перед позицией курсора;

• u - отменить последнее действие;

• . - повторить еще раз последнее действие;

• U - отменить последнее действие в текущей строке;

• /шаблон - искать вхождение;

• %s/шаблон/заменить - заменить первое слово на второе;

• n - продолжить поиск вперед;

• N - продолжить поиск назад;

С основными командами разобрались. Но у нас есть еще командная строка Vim, которая сама по себе тоже представляет огромный интерес.

#### КОМАНДНАЯ СТРОКА VIM

Командная строка Vim запускается в командном режиме нажатием двоеточия - “:”. Здесь доступны команды для сохранения файла и выхода из редактора, настройки внешнего вида и взаимодействия с внешней оболочкой.

Рассмотрим наиболее часто используемые команды редактора vim:

• :w - сохранить файл;

• :q - закрыть редактор;

• :q! - закрыть редактор без сохранения;

• :e файл - прочитать содержимое файла в позицию курсора;

• :r файл - вставить в содержимое файла в следующую строку;

• :r! - выполнить команду оболочки и вставить ответ в редактор;

• :set переменная=значение - установить значение переменной, например, tabstop=4, или set number, с помощью этой команды можно управлять многими аспектами работы vim.

• :buffers - посмотреть открытые файлы.

Со всеми основами разобрались, и вы теперь использование vim не будет казаться вам таким сложным. Но это еще далеко не все, этот мощный редактор может еще очень многое. Дальше мы рассмотрим несколько примеров использования vim, чтобы вам было легче справиться с новой программой.

#### РЕДАКТИРОВАНИЕ ФАЙЛА В VIM

Несмотря на то, что из всего вышесказанного можно понять как это делается рассмотрим еще раз. Чтобы открыть файл выполните: vim имя_файла Затем, если вы не хотите пока использовать возможности командного режима просто нажмите i, чтобы перейти в режим редактирования. Здесь вы можете редактировать файл так же, как и в nano. После того как завершите нажмите Esc, чтобы перейти в командный режим и наберите :wq. Записать и выйти. Все, готово.

#### ПОИСК И ЗАМЕНА В VIM

Довольно часто нам нужно найти определенную последовательность в тексте.

Текстовый редактор Vim умеет это делать.

Во-первых, если нужно найти символ в строке, нажмите f и наберите нужный символ, курсор будет перемещен к его позиции.

Для поиска по всему файлу используйте команду /.

После нее нужно ввести слово, которое нужно найти.

Для поиска следующего вхождения используйте n,

для предыдущего - N.

Для замены будет использоваться немного другая конструкция:

> :%s/искать/заменить/g

Двоеточие запускает командную оболочку с командой s для замены. Символ % означает что обрабатывать нужно весь файл, а g значит, что нужно обработать все найденные строки, а не только первую. Чтобы программа спрашивала перед каждой заменой можно добавить в конец строки опцию c.

#### ОДНОВРЕМЕННОЕ РЕДАКТИРОВАНИЕ НЕСКОЛЬКИХ ФАЙЛОВ

Чтобы открыть несколько файлов, просто передайте их в параметры при запуске программы: vim файл1 файл2 файл3

Редактор vim linux откроет первый файл, для переключения ко второму используйте команду :n, чтобы вернутся назад :N.

С помощью команды :buffers вы можете посмотреть все открытые файлы, а командой :buffer 3 переключится на третий файл.

#### БУФЕР ОБМЕНА VIM

Текстовый редактор Vim имеет свой буфер обмена. Например, вам нужно скопировать в четыре строки и вставить их в другое место программы, для этого выполните такую последовательность действий:

• Нажмите Esc, чтобы перейти в командный режим;

• Наберите 4yy чтобы скопировать четыре строки;

• Переместите курсор в место где нужно вставить эти строки;

• Нажмите p для вставки.

Также можно использовать выделение vim, чтобы скопировать строки. Выделите текст с помощью v, а затем нажмите y, чтобы скопировать.

#### КИРИЛЛИЦА В VIM

Кириллица в Vim работает превосходно. Но есть одно но, когда включена кириллица в системе, все команды vim не работают, им и не нужно работать, они же не приспособлены для кириллицы. Но переключать каждый раз раскладку, когда работаете в командном режиме тоже не очень удобно.

открываем файл ~/.vimrc и добавляем туда такие строки:

> set keymap=russian-jcukenwin

> set iminsert=0

> set imsearch=0
