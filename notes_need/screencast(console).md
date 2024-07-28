
https://github.com/dbermond/screencast

## [ОПИСАНИЕ](https://github.com/dbermond/screencast/#description)

**screencast** — это интерфейс командной строки для записи рабочего стола X11 с использованием FFmpeg, поддерживающий автономную запись и потоковую передачу в реальном времени. Он разработан для того, чтобы сделать запись рабочего стола простой задачей, устраняя несколько сложные аргументы командной строки FFmpeg и необходимость использования нескольких команд. Он использует предопределенные настройки кодировщика, которые подходят для большинства нужд. Настройки по умолчанию обеспечивают быстрый и доступный способ записи рабочего стола и поддержку YouTube, позволяя пользователю сосредоточиться на простом указании желаемого размера (разрешения) и положения видео. Если пользователь не хочет придерживаться настроек по умолчанию, он может выбрать один из набора поддерживаемых кодировщиков и форматов контейнеров.

**screencast** не только обеспечивает простой способ записи рабочего стола, но также имеет возможность автоматического добавления к записям некоторых эффектов, таких как постепенное появление/затухание видео, наложение водяных знаков на текст, наложение веб-камеры и увеличение громкости.

## [МОНТАЖ](https://github.com/dbermond/screencast/#installation)

Установка осуществляется через _make_ . Простая процедура установки будет такой:

```
$ make
$ sudo make install
```

## [ИСПОЛЬЗОВАНИЕ](https://github.com/dbermond/screencast/#usage)

```
$ screencast [options] <output>
$ screencast [options] -u
$ screencast [options] -L <URL>
```

Указанное имя выходного файла должно иметь расширение, которое, в свою очередь, должно соответствовать поддерживаемому формату контейнера.

Выход(остановка записи) - `"q"`

## [ПРИМЕРЫ](https://github.com/dbermond/screencast/#examples)

- Используйте все настройки по умолчанию, указав имя файла выходного видео:
    
    - `$ screencast myvideo.mp4`
    
- Использовать настройки по умолчанию для видео 1280x720 с позиции экрана 200 234 (с автоматически выбранным именем выходного файла, по умолчанию). `mp4`формат):
    
    - `$ screencast -u -s 1280x720 -p 200,234`
    
- Изменение только формата контейнера без указания кодировщиков позволит автоматически выбирать их при необходимости. В этом случае `webm`формат создаст видео с `opus`и `vp9`кодеры:
    
    - `$ screencast /home/user/webmvideos/myvideo.webm`

- Используйте видеокодеры с аппаратным ускорением:
    
    - НВЕНЦ HEVC:
        
        - `$ screencast -u -v hevc_nvenc`

    - VAAPI VP9 с использованием узла рендеринга DRM по умолчанию (/dev/dri/renderD128):
        
        - `$ screencast -u -v vp9_vaapi`

    - VAAPI H.264 с использованием узла рендеринга DRM по умолчанию (/dev/dri/renderD128):
        
        - `$ screencast -u -v h264_vaapi`

    - VAAPI H.264 с использованием узла рендеринга DRM /dev/dri/renderD129:
        
        - `$ screencast -u -v h264_vaapi -A /dev/dri/renderD129`

- Прямая трансляция:
    
    - Только прямая трансляция без сохранения локального выходного видео:
        
        - `$ screencast -L <URL> -v h264_vaapi`

    - Прямая трансляция, а также сохранение копии в локальном выходном видео (с автоматически выбранным именем выходного файла, по умолчанию). `mp4`формат):
        
        - `$ screencast -L <URL> -v h264_nvenc -K -u`

- Видео 1280x720 с позиции экрана 200 234, 30 кадров в секунду, `mp3lame`аудиокодер, `x265`видеокодер, `mkv`формат контейнера, эффект постепенного появления видео, эффект увеличения громкости на 50 %, эффект водяного знака небольшого текста в правом нижнем углу видео (с использованием значений по умолчанию для размера, положения и шрифта водяного знака) и эффект наложения веб-камеры в правом верхнем углу видео (с использованием значения по умолчанию для ввода веб-камеры, размера, положения и частоты кадров):
    
    - `$ screencast -s 1280x720 -p 200,234 -r 30 -a mp3lame -v x265 -e in -m 1.5 -w www.mysitehere.com -W myvideo.mkv`

**ПРИМЕЧАНИЕ** : Когда не используется [`-x`](https://github.com/dbermond/screencast/#-x---fixedn)вариант, нажмите **клавишу q** в окне терминала, чтобы завершить запись.

- [`-s, --size=NxN`](https://github.com/dbermond/screencast/#-s---sizenxn)
- [`-p, --position=N,N`](https://github.com/dbermond/screencast/#-p---positionnn)
- [`-d, --display`](https://github.com/dbermond/screencast/#-d---displaynn)
- [`-b, --border`](https://github.com/dbermond/screencast/#-b---bordern)
- [`-S, --select-region`](https://github.com/dbermond/screencast/#-s---select-region)
- [`-r, --fps=N`](https://github.com/dbermond/screencast/#-r---fpsn)
- [`-f, --format=TYPE`](https://github.com/dbermond/screencast/#-f---formattype)
- [`-i, --audio-input=NAME`](https://github.com/dbermond/screencast/#-i---audio-inputname)
- [`-a, --audio-encoder=NAME`](https://github.com/dbermond/screencast/#-a---audio-encodername)
- [`-v, --video-encoder=NAME`](https://github.com/dbermond/screencast/#-v---video-encodername)
- [`-A, --vaapi-device=NODE`](https://github.com/dbermond/screencast/#-a---vaapi-devicenode)
- [`-e, --fade=TYPE`](https://github.com/dbermond/screencast/#-e---fadetype)
- [`-m, --volume-factor=N`](https://github.com/dbermond/screencast/#-m---volume-factorn)
- [`-w, --watermark=TEXT`](https://github.com/dbermond/screencast/#-w---watermarktext)
- [`-z, --wmark-size=NxN`](https://github.com/dbermond/screencast/#-z---wmark-sizenxn)
- [`-k, --wmark-position=N,N`](https://github.com/dbermond/screencast/#-k---wmark-positionpre---wmark-positionnn)
-        [`--wmark-position=PRE`](https://github.com/dbermond/screencast/#-k---wmark-positionpre---wmark-positionnn)
- [`-c, --wmark-font=NAME`](https://github.com/dbermond/screencast/#-c---wmark-fontname)
- [`-W, --webcam`](https://github.com/dbermond/screencast/#-w---webcam)
- [`-I, --webcam-input=DEV`](https://github.com/dbermond/screencast/#-i---webcam-inputdev)
- [`-Z, --webcam-size=NxN`](https://github.com/dbermond/screencast/#-z---webcam-sizenxn)
- [`-P, --webcam-position=N,N`](https://github.com/dbermond/screencast/#-p---webcam-positionpre---webcam-positionnn)
-        [`--webcam-position=PRE`](https://github.com/dbermond/screencast/#-p---webcam-positionpre---webcam-positionnn)
- [`-R, --webcam-fps=N`](https://github.com/dbermond/screencast/#-r---webcam-fpsn)
- [`-L, --live-streaming=URL`](https://github.com/dbermond/screencast/#-l---live-streamingurl)
- [`-1, --one-step`](https://github.com/dbermond/screencast/#-1---one-step)
- [`-x, --fixed=N`](https://github.com/dbermond/screencast/#-x---fixedn)
- [`-n, --no-notifications`](https://github.com/dbermond/screencast/#-n---no-notifications)
- [`-g, --png-optimizer=NAME`](https://github.com/dbermond/screencast/#-g---png-optimizername)
- [`-o, --output-dir=DIR`](https://github.com/dbermond/screencast/#-o---output-dirdir)
- [`-t, --tmp-dir=DIR`](https://github.com/dbermond/screencast/#-t---tmp-dirdir)
- - [`-K, --keep`](https://github.com/dbermond/screencast/#-k---keep)
- [`-u, --auto-filename`](https://github.com/dbermond/screencast/#-u---auto-filename)
- [`-l, --list`](https://github.com/dbermond/screencast/#-l---list)
- [`-h, --help`](https://github.com/dbermond/screencast/#-h---help)
- [`-V, --version`](https://github.com/dbermond/screencast/#-v---version)


