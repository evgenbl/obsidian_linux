Настройка xterm происходит путём правки файла ~/.Xresources.  
Чтобы изменения в файле вступили в силу, необходимо перечитать его командой:   

```python
~ $ xrdb ~/.Xresources
  #или загрузить заново:
~ $ xrdb -load ~/.Xresources
```

Посмотреть какие настройки используются:

```python
~ $ xrdb -query -all
```

##### файл ~/.Xresources

**Буферы обмена (PRIMARY и CLIPBOARD)**  
Для использования обоих буферов поместите в ~/.Xresources строку:

```sql
XTerm*VT100.translations: #override <Btn1Up>: select-end(PRIMARY, CLIPBOARD, CUT_BUFFER0)
```

Выделенный текст в xterm сразу копируется в буфер. Вставить в терминале Shift+Insert, в другие окна как обычно.

.Xresources

! XTerm 
!==============================================================================
!Кириллица
XTerm*utf8Title: true
XTerm*faceName: Droid Sans Mono
XTerm*faceSize: 13
xterm*bolfFont: 
xterm*scrollBar:        false
xterm*geometry:         80x50
xterm*eightBitInput:    false
xterm*metaSendsEscape:  true
xterm*colorBDMode:      true
xterm*boldMode:         on
xterm*alwaysBoldMode:   false
xterm*dynamicColors:    on
xterm*colorMode:        on
xterm*saveLines:        10000
xterm*visualBell:       false
 
!==============================================================================
! Цвета 
!==============================================================================
xterm*colorBD:     #e6d51d
xterm*background:  #111111
xterm*foreground:  #b4b4b4
! Чёрный
xterm*color0:      #000000
xterm*color8:      #555753
! Красный
xterm*color1:      #b6212d
xterm*color9:      #ff6565
! Зелёный
xterm*color2:      #4c8d00
xterm*color10:     #6bbe1a
! Жёлтый
xterm*color3:      #ff8040
xterm*color11:     #e6d51d
! Синий
xterm*color4:      #0086d2
xterm*color12:     #00d2ff
! Маджента
xterm*color5:      #963c59
xterm*color13:     #d3649f
! Циановый
xterm*color6:      #105952
xterm*color14:     #177f75
! Белый
xterm*color7:      #cdcaa9
xterm*color15:     #ffffff

Другие параметры ~/.Xresources

```php
Параметр		Значение/Пример			Описание

!							                Коментарий (текст после символа игнорируется)
xterm*scrollBar:        true/false			Полоса прокрутки (по умолчанию false)
xterm*rightScrollBar:	true/false			Полоса прокрутки (по умолчанию false, т.е. положение слева)
xterm*VT100.geometry:	80x25				Размеры окна (ширина 80 x высота 25)
xterm*saveLines:	512				        Прокрутка до 512 последних линий
xterm*faceName: Andale: style=Mono: size=12	Шрифт:Стиль:Размер
xterm*background:	black				    Цвет фона может быть задан кодом #000000 или rgb:00/00/00
xterm*foreground:	white				     Цвет текста
```

**Параметры командной строки**

```bash
-bg #Цвет фона (по умолчанию — белый)
-cr #Цвет текстового курсора (по умолчанию — белый)
-rv #Инверсия цветов	
-sb #Полоса прокрутки
-geometry WidthxHeight+X+Y #ШиринахВысота+КоординатаX+КоординатаY (80x30+400+300 (параметры могут пропускаться)) 
-e программа #Запуск программы
-iconic #Запуск свёрнутым
```

**Выбор текста**  

Для выбора текста в окне xterm с помощью мыши необходимо установить ЛКМ в начале выделения, затем ПКМ в конце (позицию ПКМ можно менять, в след за ним будет изменяться область выделенного).  
Можно выделять текст сочетанием Shift+ПКМ, при этом можно изменять как с начала, так и с конца области.  
Указанные способы незаменимы, если область текста выходит за границы одного экрана xterm.

**Прозрачность (Automatic transparency)**  

Настройка в ~/.bashrc не очень хорошая идея, - может стать прозрачным окно в фокусе, а сам терминал нет.  
Должен быть установлен пакет  transset-df и композитный менеджер (Xcompmgr, Compton).  
Затем в файле ~/.bashrc добавить строку:

```javascript
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null
```

Для включения прозрачности можно ограничиться запуском xterm с параметрами

```css
xterm & sleep .3s && transset-df -a
```