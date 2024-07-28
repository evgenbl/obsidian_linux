Чтобы изменить цвета каталога, откройте ~/.bashrc файл с вашим редактором

nano ~/.bashrc

и сделайте следующую запись в конце файла:

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

Несколько хороших вариантов цвета (в данном случае 0;35он фиолетовый):

Blue = 34
Green = 32
Light Green = 1;32
Cyan = 36
Red = 31
Purple = 35
Brown = 33
Yellow = 1;33
Bold White = 1;37
Light Grey = 0;37
Black = 30
Dark Grey= 1;30

Первое число — это стиль (1 = жирный), за ним следует точка с запятой, а затем фактический номер цвета. Возможные стили (эффекты):

0   = default colour
1   = bold
4   = underlined
5   = flashing text (disabled on some terminals)
7   = reverse field (exchange foreground and background color)
8   = concealed (invisible)

Возможные фоны:

40  = black background
41  = red background
42  = green background
43  = orange background
44  = blue background
45  = purple background
46  = cyan background
47  = grey background
100 = dark grey background
101 = light red background
102 = light green background
103 = yellow background
104 = light blue background
105 = light purple background
106 = turquoise background
107 = white background

Все возможные цвета:

30  = black
31  = red
32  = green
33  = orange
34  = blue
35  = purple
36  = cyan
37  = grey
90  = dark grey
91  = light red
92  = light green
93  = yellow
94  = light blue
95  = light purple
96  = turquoise
97  = white

Их даже можно комбинировать, чтобы получить такой параметр, как:

di=1;4;31;42

в вашей переменной LS_COLORS каталоги будут отображаться жирным подчеркнутым красным текстом на зеленом фоне!

Чтобы протестировать все эти цвета и стили в своем терминале, вы можете использовать один из:

for i in 00{2..8} {0{3,4,9},10}{0..7}
do echo -e "$i \e[0;${i}mSubdermatoglyphic text\e[00m  \e[1;${i}mSubdermatoglyphic text\e[00m"
done

for i in 00{2..8} {0{3,4,9},10}{0..7}
do for j in 0 1
   do echo -e "$j;$i \e[$j;${i}mSubdermatoglyphic text\e[00m"
   done
done

Вы также можете изменить другие типы файлов с помощью команды ls, определив каждый тип с помощью:

bd = (BLOCK, BLK)   Block device (buffered) special file
cd = (CHAR, CHR)    Character device (unbuffered) special file
di = (DIR)  Directory
do = (DOOR) [Door][1]
ex = (EXEC) Executable file (ie. has 'x' set in permissions)
fi = (FILE) Normal file
ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
pi = (FIFO, PIPE)   Named pipe (fifo file)
sg = (SETGID)   File that is setgid (g+s)
so = (SOCK) Socket file
st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
su = (SETUID)   File that is setuid (u+s)
tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
*.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm

Более полный список доступен на сайте Bigsoft — Настройка LS_COLORS .

В некоторых дистрибутивах вам также может потребоваться изменить цвет фона для ow"( OTHER_WRITABLE), по умолчанию нечитаемый», например, для нежирного синего текста на зеленом фоне.

Вы можете использовать, например LS_COLORS="$LS_COLORS:di=1;33"в конце твоего .bashrcфайл, чтобы получить красивый читаемый жирный оранжевый текст на черном фоне.

После изменения файла .bashrc, чтобы изменения вступили в силу, вам придется перезапустить оболочку или запустить source ~/.bashrc.

Примечание. Вы можете объединить больше команд с помощью двоеточия , например

LS_COLORS=$LS_COLORS:'di=1;33:ln=36' ; export LS_COLORS; ls

Источник:

    ЦВЕТА Lscolors — Linux, шаг за шагом
    Geek Gumbo — изменение цвета каталога в Bash

Если вы хотите применить изменения в работающем сеансе bash, запустите:

source ~/.bashrc


