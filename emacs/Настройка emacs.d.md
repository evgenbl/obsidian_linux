Настройки emacs хранятся в файле .emacs, который хранится в домашней дирректории пользователя. Кроме этого файла есть ещё папка .emacs.d, где хранятся дополнительные файлы настроек, подключаемые модули, временные файлы emacs и т.п.  
До того как начнём писать настройки стоит учесть то, что если планируется работать в emacs на нескольких машинах, то сразу можно подумать о синхронизации конфигов. Многие для этого создают репозиторий на github. Поскольку он бесплатный, то думаю, что это хорошая идея. В файле .emacs останется минимум информации, затем будут подключаться файлы из папки .emacs.d. Даже чуть сложней — из папки .emacs.d/lisp. Вот содержимое файла .emacs.

(add-to-list 'load-path "~/.emacs.d/lisp")
(load-file "~/.emacs.d/lisp/bootstrap.el")

Здесь мы добавляем папку lisp в папки где хранятся его модули. Затем подключаем файл bootstrap.el. Файлы с кодом на лисп обычно имеют расширение lisp, а для emacs-lisp — el. Не забудьте создать папку lisp и файл bootstrap.el, пока пустой.

Продолжим настраивать emacs, здесь не будет много слов. Сразу с места в карьер. Файл настроек emacs это скрипт на emacs-lisp. Для того, что закомментировать строчку используется точка с запятой. Как сделать блочные комментарии я не знаю. Вроде этой возможности нет, если я это упустил, то напиу в комментариях.  
Далее пойдут выдержки кода и пояснение к ним.

(setq inferior-lisp-program "/usr/local/bin/sbcl")

Это строка задаст программу отвечающую за лисп.

(set-language-environment 'utf-8)
(setq slime-net-coding-system 'utf-8-unix)
(setq lisp-lambda-list-keyword-parameter-alignment t)
(setq lisp-lambda-list-keyword-alignment t)
(setq common-lisp-style-default 'modern)
(cua-mode t)
(setq x-select-enable-clipboard t) ;;Общий с ОС буфер обмена:
(tooltip-mode -1)
(menu-bar-mode -1) ;; отключаем графическое меню
(tool-bar-mode -1) ;; отключаем tool-bar
(scroll-bar-mode -1) ;; отключаем полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает
(setq use-dialog-box nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t) ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал
(delete-selection-mode t) ;; возможность удалить выделенный текст при вводе поверх
(electric-pair-mode 1) ;; автозакрытие {},[],() с переводом курсора внутрь скобок
(electric-indent-mode -1) ;; отключить индентацию electric-indent-mod'ом
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq default-tab-width 4)
(setq make-backup-files nil)

Здесь настройки прокомментированы, но по особо важным я дополнительно пройдусь. cua-mode — это использование Ctrl+x/c/v для вырезки, копирования, вставки. Это неоднозначный режим, есть много его противников, но я его включил.

(global-set-key (kbd "M-s") 'shell)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-k") 'calculator)

Здесь мы настраиваем сочетания клавиш. Таким способом можно настроить свои сочетания клавиш для каких-либо действий. Сразу напомню, что первая строчка настраивает запуск терминала на Alt+s.

;;русские буквы автоматически транслируются в соответствующие английские.
(defun reverse-input-method (input-method)
"Build the reverse mapping of single letters from INPUT-METHOD."
(interactive
(list (read-input-method-name "Use input method (default current): ")))
(if (and input-method (symbolp input-method))
(setq input-method (symbol-name input-method)))
(let ((current current-input-method)
(modifiers '(nil (control) (super) (meta) (control meta))))
(when input-method
(activate-input-method input-method))
(when (and current-input-method quail-keyboard-layout)
(dolist (map (cdr (quail-map)))
(let* ((to (car map))
(from (quail-get-translation
(cadr map) (char-to-string to) 1)))
(when (and (characterp from) (characterp to))
(dolist (mod modifiers)
(define-key local-function-key-map
(vector (append mod (list from)))
(vector (append mod (list to)))))))))
(when input-method
(activate-input-method current))))

(reverse-input-method 'russian-computer)

Этот код нужен для того, чтобы русские сочетания клавиш преобразовывались в соответствующие английские. Т.е. сочетание Ctrl+z и Ctrl+я идентичны. Иначе для любой команды вам пришлось бы переводить раскладку на англ.  
Ещё одна неплохая штука это el-get

;;el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
(with-current-buffer
(url-retrieve-synchronously
"https://raw.github.com/dimitri/el-get/master/el-get-install.el")
(goto-char (point-max))
(eval-print-last-sexp)))

el-get это менеджер пакетов для emacs. С помощью него можно поставить дополнительные плагины/режимы/модули для emacs. Для того, чтобы автоматически подключить пакеты пишем:

(setq my:el-get-packages
'(magit
slime))

Здесь мы подключаем пакет magit для работы с git и slime для подключения к sbcl. В следующих записях я ещё буду возвращаться к файлу конфигурации и подключаемым плагинам. Думаю на сегодня этого будет достаточно. Если кому интересно — смотрите чужие конфиги, читайте документацию и собирайте свой emacs. Это как путь джедая, каждый джедай сам должен собрать свой световой меч.  
Теперь запустим слайм и порадуемся своему успеху или начнём искать ошибку (если он не запустится). Запускаем слайм с помощью M-x slime RET (ret это return=enter).  
![slime-repl-emacs](http://www.lisp-fan.ru/wp-content/uploads/2016/10/SLIME-REPL-Emacs-300x194.png)  
Для выхода набираем

(quit)

Напоследок хочу сказать, что данный текст набирался на emacs в text-mode и longlines-mode.