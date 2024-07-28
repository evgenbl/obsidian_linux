Используйте Glow для обнаружения файлов Markdown, читайте документы Markdown.

—-——————-—-———-——————-—-—-—-—-—-—-—-—————-—-——-—--

**Markdown** ([МФА](https://vk.com/away.php?to=https%3A%2F%2Fru.wikipedia.org%2Fwiki%2F%CC%D4%C0&cc_key=): 'mɑːkdaʊn - произносится _маркда́ун_) — [облегчённый язык разметки](https://vk.com/away.php?to=https%3A%2F%2Fru.wikipedia.org%2Fwiki%2F%DF%E7%FB%EA_%F0%E0%E7%EC%E5%F2%EA%E8%23%CE%E1%EB%E5%E3%F7%B8%ED%ED%FB%E5_%FF%E7%FB%EA%E8_%F0%E0%E7%EC%E5%F2%EA%E8&cc_key= "https://ru.wikipedia.org/wiki/Язык_разметки#Облегчённые_языки_разметки"), созданный с целью обозначения форматирования в [простом тексте](https://vk.com/away.php?to=https%3A%2F%2Fru.wikipedia.org%2Fwiki%2F%D2%E5%EA%F1%F2%EE%E2%FB%E5_%E4%E0%ED%ED%FB%E5&cc_key=), с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций ([HTML](https://vk.com/away.php?to=https%3A%2F%2Fru.wikipedia.org%2Fwiki%2FHTML&cc_key=), [Rich Text](https://vk.com/away.php?to=https%3A%2F%2Fru.wikipedia.org%2Fwiki%2FRich_Text_Format&cc_key=) и других). Взято из Википедии.

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №1](https://sun9-32.userapi.com/impg/BOIsmkDG6O-E5J26B3mv7QVjRbJ7SKv3cdTGUQ/55MCCUSH2oo.jpg?size=807x442&quality=95&sign=1b1e36b2afb7dbf9e04c02880112c67b&type=album)

Так выглядит разметка и готовый документ в редакторе с GUI

————-——————————-————-——————-—-—-————-——-—-—-—---

Просто запустите glow без аргументов для просмотра локальных файлов Markdown. Glow найдет локальные файлы Markdown в папке текущего каталога и ниже, если вы находитесь в репозитории Git, Glow выполнит поиск репо.

Установка

Сборка (требуется Go 1.13+)установить Go(goland)+git

$ git clone https://github.com/charmbracelet/glow.git

$ cd glow

$ go build

Поиск файлов Markdown - glow --> Enter

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №2](https://sun9-77.userapi.com/impg/_NjokjSIYF-h-3vztVPDCqMZg0yIjVmWI-cdmg/-Ppper_4PVY.jpg?size=807x442&quality=95&sign=c8e35586dc5a45dee5d3f702eea56a57&type=album)

Просмотр файла Markdown - Enter

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №3](https://sun9-15.userapi.com/impg/PWTKR7hjicE15-N5_hrsvNP3hznhSNN1cjRVYA/XjMajzZY5NM.jpg?size=807x442&quality=95&sign=b72bdebb83b6114c028ad5d037a91aa1&type=album)

Назад,к списку,закрыть просмотр - Esc

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №4](https://sun9-24.userapi.com/impg/T8HXFZW54AwuMuqKT91ezQnmcdF3Epec1_mz1w/LcajZUzAN0Y.jpg?size=807x442&quality=95&sign=7c7f9fe980059e793a2db734afb6cc94&type=album)

Выход из Glow - q

Ну а создавать файлы Markdown можно в любом текстовом редакторе.Для создания и редактирования в терминале можно использовать vim,micro.

При наличии установленной программы pandoc можно конвертировать файлы Markdown в любой формат,и конвертировать между форматами (html,pdf,odt,tex,docx,md,txt).

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №5](https://sun9-63.userapi.com/impg/fdTnJylhrBSE4neucOPOJ1J8uJ6i3lrB59x_pA/HGQoSUAMlz4.jpg?size=807x444&quality=95&sign=c55c73e78102e440ee073d85595f19f9&type=album)

Из …*.md в …*.docx

![Glow — это программа для чтения файлов Markdown на базе терминала., изображение №6](https://sun9-51.userapi.com/impg/-X_fhOIAQo8n7T4tlkNMelve7tB7fvK75liu6w/FFawTdyorJ8.jpg?size=807x444&quality=95&sign=503e4a2b1dfba4aef4ba31bc06999555&type=album)

Вся работа с программами,файлами производится в терминале!

[[Glow — это программа для чтения Markdown на базе терминала]]
[[Glow]]