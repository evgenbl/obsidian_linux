#alt
Полезные ссылки Скачать образы:

[https://www.basealt.ru/simplylinux/do...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVkxbjRERWR1ZzJkS0k0eldSTG15SnpNS1pqZ3xBQ3Jtc0trT1JtWkw5TGZuYk1JQkF6REtIN3JlU1BoVGNURmxzdGZQQWNwLWhzVXZRN2l0LWtMeTZ5WWVKeHB1QlpYYW96V0lvS0NYQjZUUE4yLUh2Uk80ajJweFNFZ29fZkowaHBUa3U2Ml9KNmt6QW5CR1M5RQ&q=https%3A%2F%2Fwww.basealt.ru%2Fsimplylinux%2Fdownload&v=clqy1UNCa4g) 

Ознакомиться со списком пакетов или скачать образы: 

[https://packages.altlinux.org/ru/p10/...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbWhOdGNWRW5EMjFqckNtNDVvS3lubFc4OVRnZ3xBQ3Jtc0trVTBsRThGUERDZS1ZQW1JbUprdFd2bTZWbU9ZaWNaZGRfWUVFemx3SWZTSDI2V0s1bVZuOFlXc2d1ZFQxSWZiVEZ5RTZraWxhQm1adHJfZnhIcW9kWmd1OE9WN3RVclZTYVBwUzVTaFRVdjgya1F3UQ&q=https%3A%2F%2Fpackages.altlinux.org%2Fru%2Fp10%2Fimages%2Fslinux&v=clqy1UNCa4g) 

Команды для обновления системы: 

- $ su - 

- apt-get update && apt-get dist-upgrade && update-kernel 

Для просмотра доступных снимков в timeshift выполните: 

- sudo timeshift —list 

Далее вы можете восстановить нужный вам снимок такой командой: 

- sudo timeshift --restore --snapshot --target /dev/sda 

После этого утилита спросит, нужно ли устанавливать загрузчик, и если да, то на какой диск.

Затем попросит подтверждения восстановления и после этого компьютер перезагрузится.
