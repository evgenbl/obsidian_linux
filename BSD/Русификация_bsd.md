Видео о том, как русифицировать систему и настроить man'ы на русском языке.

Русификация системы и русские man'ы.

1. Прописываем в директории /etc/rc.conf следующие 3 строчки:
 font8x16="cp866-8x16"
 scrnmap="koi8-r2cp866"
 keymap="ru.koi8-r"

2. В директории /etc/ttys дописываем к каждому значению "cons25" букву r

3. Идем в директорию /root/ и набираем команду setenv LANG ru_RU.KOI8-R, затем там же команду pw usermod root -L russian

4. делаем reboot системы. Система русифицирована...

Теперь устанавливаем мануалы на русском
Для того, чтоб скачать мануалы по протоколу svn, необходимо установить приложение subversion

5. pkg_add -r subversion

6. Создаем директорию /usr/doc и перемещаемся в нее

7. Скачиваем в нее маны: svn co svn://svn0.us-west.freebsd.org/doc/head

8. Заходим в директорию: /usr/doc/head/ru_RU.KOI8-R/man

9. Делаем сборку:
 make
 make distrib-dirs
 make install
 make clean

и пользуемся мануалами на русском языке...

Видео о том, как русифицировать систему и настроить man'ы на русском языке.

Русификация системы и русские man'ы.

1. Прописываем в директории /etc/rc.conf следующие 3 строчки:
 font8x16="cp866-8x16"
 scrnmap="koi8-r2cp866"
 keymap="ru.koi8-r"

2. В директории /etc/ttys дописываем к каждому значению "cons25" букву r

3. Идем в директорию /root/ и набираем команду setenv LANG ru_RU.KOI8-R, затем там же команду pw usermod root -L russian

4. делаем reboot системы. Система русифицирована...

Теперь устанавливаем мануалы на русском
Для того, чтоб скачать мануалы по протоколу svn, необходимо установить приложение subversion

5. pkg_add -r subversion

6. Создаем директорию /usr/doc и перемещаемся в нее

7. Скачиваем в нее маны: svn co svn://svn0.us-west.freebsd.org/doc/head

8. Заходим в директорию: /usr/doc/head/ru_RU.KOI8-R/man

9. Делаем сборку:
 make
 make distrib-dirs
 make install
 make clean

и пользуемся мануалами на русском языке...

[Link:](https://www.youtube.com/watch?v=Xq8YCpCLMJs&t=334s)

[Oleksii Mostovyi](https://www.youtube.com/@oleksiimostovyi5471/videos)