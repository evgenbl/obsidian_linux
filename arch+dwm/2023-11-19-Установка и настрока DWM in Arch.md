УСТАНОВКА DWM:

---

sudo pacman -S xorg xorg-xinit mesa wget kitti dmenu

>wget https://dl.suckless.org/dwm/dwm-6.2.tar.gz

wget [https://dl.suckless.org/dwm/dwm-6.2.t...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmxXcWE0akNmc0RXTWhFeXZqNlZJNGNjYnVvd3xBQ3Jtc0tsNXZNTWl5bk14azh6eXQ5Mnd5VjhhWk1vWC03cmMwZkhsWk9rbzV0MUppQnFtNUpRaV9XR1FkR2hYTDg5Sno2cHkteUd6UEgxek5BWnZGcFU3US0wd20xbHlsNlo3NUI3aU91dmUxVUJOTkhBWm9JZw&q=https%3A%2F%2Fdl.suckless.org%2Fdwm%2Fdwm-6.2.tar.gz&v=xA4_W1fEZvc)

tar -xzvf dwm-6.2.tar.gz

cd dwm-6.2

nano config.h

static const char *termcmd[] = { "st kitty", NULL };

sudo make clean install 

or

---

А для Dwm его очень просто настроить.

Открываем файл config.h в папке с исходным кодом Dwm. Примерно на 45 строке находим:

> MODKEY Mod1Mask

Заменяем Mod1Mask на Mod4Mask. Сохраняем и компилируем код.

Компилировать можно несколькими способами. Остановимся на программе Make. В терминале переходим в папку с кодом Dwm (если вы ещё не там), н-р:

> $ cd ~/builds/dwm

Далее вводим команды:

> $ make
> 
> # make install
> 
> # make clean

Изменения вступят в силу после перезагузки dwm.

---

echo exec dwm >> .xinitrc

startx

ХОТКЕИ DWM:

---

mod+shift+enter запуск терминала 

mod+p запуск dmenu 

mod+i mod+d переместить активное окно в мастер область 

mod+shift+2 переместить активное окно из мастер области 

mod+j mod+k перемещение между окнами 

mod+enter переместить активное окно в вехний левый угол 

mod+h mod+l изменить размер областей 

mod+shift+c закрыть окно 

mod+shift+2 переместить окно на второй воркспейс 

mod+t тайлинг 

mod+f плавающий режим 

mod+shift+space плавающий режим для отдельного окна 

mod+лкм перемещение окна причем в любом режиме mod+пкм изменение размеров окна 

mod+m режим монокля 

mod+b скрыть/показать панель

---

Ссылки: 

Запуск и настройка перефирии:   

[![](https://www.gstatic.com/youtube/img/watch/yt_favicon.png) • Настройка перефирии в оконных менедже...](https://www.youtube.com/watch?v=zM7LYhNz2MM&t=0s)   

Настройки гтк тем иконок и шрифтов:   

[![](https://www.gstatic.com/youtube/img/watch/yt_favicon.png) • Установка иконок, тем и курсоров в Linux](https://www.youtube.com/watch?v=HRGgrcrY1FY&t=0s)   

Патчи DWM: [https://dwm.suckless.org/patches/](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbk5JS2x4aUlZeTRpamxtamE2VGdLVzFidWdlUXxBQ3Jtc0tuTkFNajdBR3JsS0xadXF6dzVReXo2anU0U0djM3oxbFlmS1Z0dTJNQ2JTZnRkLXZLdHRDTG1Ya1M3alkyaDdHcDhqbzhIbTVUQWgwVFVLVUUxbVg3VGRkUDFoSUNzdFVxcnVJaTh2Rm9yVnNQRG56Zw&q=https%3A%2F%2Fdwm.suckless.org%2Fpatches%2F&v=xA4_W1fEZvc) 

Конфиги DWM из видео: [https://notabug.org/owl410/owl_dotfil...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbTJRZVFYVGdWaWFKRlM5b3V1T1RmTlRNZnF5QXxBQ3Jtc0tscmdBU29lS3pUNi00eWlfVHJ1Vld5aGlFWFB1UDRfWXFoSFd6c0NTeWx1Zzh5NEFhbUM1SHRJWEhsR3V1Z1ZzMWlRY2xQRTlJa1JHMjJ3am9ZWTRKZFk0akVmOFU3Y1lWNGNoV0FDcWpPNTF5SlBnTQ&q=https%3A%2F%2Fnotabug.org%2Fowl410%2Fowl_dotfiles%2Fsrc%2Fmaster%2Fdwm%2Fdwm_1&v=xA4_W1fEZvc)

---

Обои: [https://unsplash.com/collections/9182...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa0J3ZUhsUEIxV3NpcXdCOXEtcWZ3M3pBQklTZ3xBQ3Jtc0tsYUFGOHlxa2czWERhdDRocmhiUHhnSzdzd3pVQ3JOd0VrUlRrMUVTVjRpd1c1QjJER3B2MDVxOWxoVWZndndkY1pCeERlZGdkbjZzV0VsVFNlTlpfRF9iOEdOSlpnZk1LQVJRZVJlYXY1Wmt2Y1lUVQ&q=https%3A%2F%2Funsplash.com%2Fcollections%2F91828652%2Fwallpaper&v=xA4_W1fEZvc) 

Конфиги: [https://notabug.org/owl410/owl_dotfiles](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXdhcVg0NGpsbnhmRmxDbjhZVGhtMGNKNWsyd3xBQ3Jtc0ttYmVFR3hiSGd1ZktWak03YmsyZGJjTXFjMW5QWGtXMENITlV0TEoxZUtNOGlzc1pEal9QUEZ5WGVKRjZYSVlSMjNnYUx3QUVVdklSQjhYSWhQZ09Xc3FzY1ZTYkd3TTBKZEkwNkY1VlBRNk85VUdOQQ&q=https%3A%2F%2Fnotabug.org%2Fowl410%2Fowl_dotfiles&v=xA4_W1fEZvc) 

Телеграм: [https://t.me/prolinux_tg](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbkpPVU42aXAwRm1IRHQ3cmIwbzlhS3cwVlJ4QXxBQ3Jtc0ttaTNzdktneWxRMmZpeEhBUnhGYkRzMk5BRXdnNll6b3pNeFMzN2E3TEVwMUFTVW9mN3gzbmFOQ0NDTE5GU3kzMVlmazNQRm14dGNvYVdWMWVWTG9fSUFuLXZFS2ZhVF9wNlJIVkVUQW9nMDNLRnVCOA&q=https%3A%2F%2Ft.me%2Fprolinux_tg&v=xA4_W1fEZvc) 

Телеграм чат: [https://t.me/true_prolinux_chat](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnU3Zi00SEg4Sm9VU052X3RLRTBZNDdqemd4QXxBQ3Jtc0tuSk45REtyOEU3QVZzQ21qTHptOHI5WDAyaEVoZFFhanRRVGpDTXI3UDJnS2V4Q2hRUzlvYlItWXlUMndlbFo4VFJlNklxSm9nMjI1cV9STWFaalFIc2kyNDZ3WUt5bi1tTm52R2J5SHFxM0RDd0pWdw&q=https%3A%2F%2Ft.me%2Ftrue_prolinux_chat&v=xA4_W1fEZvc)






