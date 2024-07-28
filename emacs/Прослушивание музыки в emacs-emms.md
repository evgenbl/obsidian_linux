#### Music in Emacs

*Add all your music to a playlist by invoking:*

- M-x emms-add-directory-tree RET

- ~/my_music_directory/ RET

- M-x emms-playlist-mode-go

---

Проигрывать музыку там, где я провожу большую часть своего т.е. в emacs.

Погуглил, полазил по просторам инета и нашел замечательную штуковину:

- EMMS(Emacs Multimedia System)


Возможности сей штуковины:

    Она абсолютно бесплатна(а что вы ожидаете от плагина к emacs?)
    Поддерживает аудио форматы: MP3, Ogg Vorbis, FLAC
    Поддерживает видео форматы: MPEG, WMV, MOV, AVI, OGM, MKV
    Есть управление плейлистами
    Написано сие чудо на elisp =)

Ставится следующим образом:

Топаем в каталог, где у нас лежат все установленные emacs расширения(у меня это ~/.emacs.d/) и выполняем там:

- git clone git://git.sv.gnu.org/emms.git

Затем в вашем конфиге emacs пишем следующее:
```
 (add-to-list 'load-path "~/.emacs.d/emms/")
 (require 'emms-setup)
 (emms-standard)
 (emms-default-players)
```
На этом установка закончена.

Что б освоить все фишки нужно ковырять вот этот мануал, но основные команды это:

emms-play-file, emms-play-directory.

Так же, есть emms-playlist-mode, который если активировать, то можно управлять плейлистом горячими клавишами(например, n - след. трек, p- предыдущий трек).

https://barabansheg.blogspot.com/2012/09/emacs.html

---

### Quickstart Guide

This chapter demonstrates how to setup Emms so that you can start listening to your music without having to read all of the documentation first. This is the tl;dr version of the manual.

The first thing to do is to load Emms via GNU ELPA. Invoke M-x list-packages and choose to install Emms.

If you are installing Emms manually, then start by telling Emacs where your copy of Emms is located. Let’s say you have it in ~/elisp/emms/. So add this line to your .emacs:

(add-to-list 'load-path "~/elisp/emms/lisp/")
(require 'emms-setup)

(More detailed information about installing Emms can be found in the installation chapter, See Installation.)

Either way, you are now ready to configure Emms. Your Emms config can be as simple as three lines. For example:
```
(emms-all)
(setq emms-player-list '(emms-player-vlc)
      emms-info-functions '(emms-info-native))
```
The function emms-all loads all of the stable features in Emms.

Emms can automatically generate that ‘setq’ statement for you based on which players and metadata readers you have installed on your system. Just invoke emms-setup-discover and answer a few questions.

The variable emms-player-list is a list of players that Emms should call to play your media. In this example we assume that you have VLC installed on your system. But if you use mpv or mplayer instead, just change emms-player-vlc to emms-player-mpv or emms-player-mplayer; you get the idea.

The variable emms-info-functions is a list of ways for Emms to read the metadata in your media files, so that Emms can display the song title, artist name, etc. emms-info-native is a metadata reader written entirely in Emacs Lisp, but there are also other backends which call external programs such as TinyTag, Taglib, Exiftool, and etc.

Reload your Emacs initialization file, or restart Emacs to let the changes have an effect.

Add all your music to a playlist by invoking:

- M-x emms-add-directory-tree RET

- ~/my_music_directory/ RET

When you do this Emms will start reading metadata from the files and populating the cache. This may take a while.

When you are done, you can load the browser with **M-x emms-browser**,

or view your playlist directly with **M-x emms-playlist-mode-go** (when in the playlist you can hit RET on a track to start playing it.)

Now you can start exploring Emms. It’s probably best to begin with the basic commands (see Basic Commands), the interactive playlists (see Interactive Playlists), and the browser (see The Browser).

.emacs:

```
;;emms
(add-to-list 'load-path "~/.emacs.d/emms/")
(require 'emms-setup)
(emms-standard)
(emms-default-players)

(emms-all)
(setq emms-player-list '(emms-player-mplayer)
      emms-info-functions '(emms-info-native))

(require 'emms-player-simple)
(require 'emms-source-file)
(require 'emms-source-playlist)
(setq emms-player-list '(emms-player-mpg321
                         emms-player-ogg123
                         emms-player-mplayer))

(setq emms-info-asynchronously nil)
(setq emms-playlist-buffer-name "*/home/jenit/Music*")

(require 'emms-history)
(emms-history-load)
```


https://www.gnu.org/software/emms/manual/#Quickstart-Guide
