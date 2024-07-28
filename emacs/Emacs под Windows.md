1. Под виндой некорректно работает кодировка поэтому, есть это  

> `(set-language-environment 'UTF-8)   (setq default-input-method 'russian-computer)   (set-selection-coding-system 'windows-1251)   (set-default-coding-systems 'windows-1251)   (prefer-coding-system 'windows-1251)`


2. Настройка приятных сердцу цветов  

> `(custom-set-faces   '(default ((t (:inherit nil :stipple nil :background "gray17" :foreground "snow" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Courier New"))))   '(cursor ((t (:background "peach puff"))))   '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) (:background "green"))))   '(font-lock-comment-face ((nil nil)))   '(font-lock-doc-face ((t (:inherit font-lock-string-face :background "black")))))      (set-background-color "#333333")   (set-foreground-color "#ffffff")   `

  
  
3. Связывание модов по расширениям файлов, можете продолжить для себя  

> `(autoload 'javascript-mode "javascript" nil t)   (setq auto-mode-alist   (append   '(   ( "\\.el$". emacs-lisp-mode)   ( ".emacs". emacs-lisp-mode)   ( "\\.py$". python-mode)   ( "\\.pyw$". python-mode)   ( "\\.html$". sgml-mode)   ( "\\.xml$". sgml-mode)   ( "\\.js$". javascript-mode)   ( "\\.cpp$". c++-mode)   ( "\\.h$". c++-mode)   )))   (global-font-lock-mode 1) ;; эта хитрая заточка, включает разум емакса для подсветки синтаксиса   `

  
  
4. Еще кучка хитрых заточек  

> `(tool-bar-mode -1) ;; выключить тубар   (setq scroll-step 1) ;; шаг =1   (setq default-tab-width 4) ;; табы по 4   (global-hl-line-mode 1) ;; подсветка строки с курсором   (windmove-default-keybindings 'meta) ;;   (fset 'yes-or-no-p 'y-or-n-p) ;; просим емакс быть кратким   (iswitchb-mode 1) ;; режим переключения буферов   (desktop-save-mode t) ;; сохранять буфера после закрытия   `

  
  
5. Это надпись здесь, что легко переходить в конфиг-файл  

> `(defun load-config ()   (interactive)   (find-file "~/.emacs"))   (global-set-key "\C-x/" 'load-config)   `

  
  
6. Шорт-каты для облегчения жизни в тяжелых офисных условиях  

> `(global-set-key [(control tab)] 'previous-buffer)   (global-set-key [(control shift tab)] 'next-buffer)   (global-set-key [f4] 'revert-buffer)   (global-set-key [f5] 'call-last-kbd-macro)   (global-set-key [f8] 'linum-mode) ;; без этой штуки жить нельзя   (global-set-key [f11] 'ibuffer)   (global-set-key [f10] 'bookmark-bmenu-list) ;; Это покруче, Ctrl-D в тотал командере, сохраняйте букмарки везде (C-xrm) и открывайте их.   `

  
  
7. И еще шорт-катов  

> `(global-set-key [?\C-'] 'toggle-truncate-lines) ;; режим word-wrap по-православному   (global-set-key "\C-cr" 'rename-buffer)   (global-set-key "\C-c!" 'revert-buffer)   (global-set-key "\C-z" 'undo) ;; по умолчанию емакс уходит в бакграунд   (global-set-key "\C-c\C-r" 'replace-string)   `

8. Это уже просто от лени.  

> `(add-hook 'javascript-mode-hook 'linum-mode 'toggle-truncate-lines)   (add-hook 'python-mode-hook 'linum-mode)`