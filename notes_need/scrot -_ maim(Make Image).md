[**Scrot**](https://scrot.sourcearchive.com/) — маленькая и удобная консольная утилита для "**снятия**" скриншотов. Утилита может делать скриншот с задержкой по времени, захватывает все выпадающие меню, курсор и прочее. Утилита настолько универсальна и проста в использовании, что может использоваться в любом окружении и отправлять скриншоты по сети.

Запустить **Scrot** для создания снимка всего можно просто выполнив "**scrot**", за задержку отвечает опция **-d**, для создания снимка по истечению **5** секунд и сохранения его в каталог "**Изображения**", под именем **имя_файла.png** нужно выполнить:

- $ scrot ~/Изображения/имя_файла.png -d 5

maim(Make Image)— маленькая утилита для создания снимков экрана (скриншотов / screenshoot), разработана как улучшенная версия scrot.

maim делает снимок всего экрана или отдельного окна, сохраняя результат в ￼￼PNG или JPG форматах. С помощью утилиты интерактивного выбора области экрана slop(Select Operation), от того же автора, добавляется возможность выделения произвольной области экрана с которой будет делаться снимок.

Все, что нам нужно сделать, это вызвать maim и передать путь файла в качестве аргумента:

- $ maim ~/screenshot.png

- $ maim ~/Изображения/имя_файла.png -d 5

#### Делаем скриншот с задержкой

Maim обладает очень интересной функциональностью: он может использовать задержку, выраженную в секундах, прежде чем сделать снимок экрана. Опция, позволяющая нам это сделать, — `-d` (сокращение от `--delay`).

Как вы понимаете, все, что нам нужно сделать, это передать в качестве аргумента параметру число с плавающей запятой. Чтобы подождать `5` секунд перед тем, как сделать снимок экрана, мы можем запустить следующую команду:

- $ maim -d 5 ~/screenshot

После запуска команды на экране появится обратный отсчет. По истечении срока действия скриншот будет сохранен в указанное место.

Как мы уже говорили, поддерживаются только форматы png и jpg, первый из которых используется по умолчанию. У нас также есть возможность выбрать качество получаемого изображения с помощью опции `-m` и выразить уровень сжатия целым числом от `1` до `10`: это будет иметь разные эффекты в зависимости от выбранного формата изображения.