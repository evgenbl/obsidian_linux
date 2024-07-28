### Cron.Его основная задача выполнять нужные процессы в нужное время.(Планировщик заданий)

#### crontab -e   создать задание(работает от имени пользователя,без sudo)

#### На моем примере:

#### В всех Linux кроме Astra:

- crontab -e

- 00 09 16 * * echo 'date' > /home/jenit/Desktop/date.txt

#### В Astra  Linux так делать запись:

- sudo crontab -u jenit -e

- 00 09 16 * * echo 'date' > /home/jenit/Desktop/date.txt

 *(Расшифровка: в ноль минут,в девять часов,шестнадцатого числа,каждый месяц отпралять сообщение 
 со словом data на рабочий стол,в файл data.txt.)*

00 - минуты

09 - часы

16 - дата,(день месяца)

\* - месяц

\* - день недели

#### Мой crontab -e 
````
#|	hour (0-23),
#|	|	day of the month (1-31),
#|	|	|	month of the year (1-12),
#|	|	|	|	day of the week (0-6 with 0=Sunday).
#|	|	|	|	|	commands
````
- 00 09 16 * * echo 'date' > /home/jenit/'Рабочий стол'/date.txt
  
- 00 08 05 03 * echo 'Birthday Slava 05.03.1989' > /home/jenit/'Рабочий стол'/date-Slava.txt 
  
- 00 08 15 11 * echo 'Birthday Nika 15.11.1990' > /home/jenit/'Рабочий стол'/date-Nika.txt  
 
- 00 08 16 06 * echo 'Birthday Ura 16.06.1993' > /home/jenit/'Рабочий стол'/date-Ura.txt
  
- 00 08 21 01 * echo 'Birthday Dasha 21.01.2017' > /home/jenit/'Рабочий стол'/date-Dasha.txt  
 
#### Если нужно по расписанию проиграть звуковой файл.

- 00 08 * * * /usr/bin/mpg123  /home/jenit/Music/mahnem.mp3
