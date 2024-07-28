Пакет для работы с Tex, LaTex, XeTex и прочим, обладает массой полезных комбинаций, а так как автодополнение и снипеты(шаблонные конструкции) уже включены пакетом emacs-for-python , нам остается только наслаждаться. Хотя придется скачать [auto-complete-auctex.el](https://github.com/monsanto/auto-complete-auctex) Уж очень хотелось чтобы при дополнении показывали изображения знаков и греческих символов.

;;Автодополнение для AUCTeX
(load-file "~/.emacs.d/auto-complete-auctex/auto-complete-auctex.el")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-symbols-active-menuitem 1)
 '(TeX-bar-LaTeX-buttons (quote (new-file open-file dired kill-buffer save-buffer undo cut copy paste [separator nil] latex next-error view bibtex latex-symbols-experimental nil)))
 '(TeX-view-program-selection (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "Evince") (output-pdf "Evince") (output-html "Evince"))))
 '(ecb-auto-compatibility-check nil)
 '(ecb-options-version "2.40")
 '(ecb-source-path (list (list "~" "~")))
 '(ecb-tip-of-the-day nil)
 '(gdb-many-windows t)
 '(gdb-use-colon-colon-notation t)
 '(latex-run-command "latex"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

Также советую покопаться в настройках AUCTex, там вы можете активировать специальное меню Math со списком всех символов.

Комбинации:

Их конечно больше но все же

- **C-c C-t C-p** Сменить вывод с DVI на PDF
- **C-c C-c** Запуск компилятора(pdf latex например), также устанавливает текущий файл master файлом(спец метка в конце файла)
- **C-c C-e** Вставить конструкцию вроде формул или списков с возможностью автодополнения названия.

\begin{} \end{}

- **C-c C-s** Вставить один из элементов оглавления.
- **С-с С-f С-b** Вставить жирный шрифт
- **C-c C-f C-i** Вставить курсив
- **C-c Стрелка_вверх** Переключиться на мастер файл, мастер файл это исходный корневой файл вашего проекта который включает в себя все остальные подкаталоги

### Сложная сборка DVI->PS->PDF

Стандартная сборка позволяет собрать либо DVI либо PDF , но вот когда мы используем нечто например PStricks нам нужен порядок компиляции по сложнее. Один из вариантов решений при сложной компиляции это создание Makefile и запуска его командой **M-x compile** или в терминале.

(setq my-tex-commands-extra (list
                            (list "Custom Compile" 
"latex -interaction=nonstopmode  %s.tex && latex -interaction=nonstopmode  %s.tex && dvips %s.dvi -o %s.ps && ps2pdf %s.ps %s.pdf" 
'TeX-run-command nil t)))
(require 'tex)
(setq TeX-command-list (append TeX-command-list my-tex-commands-extra))

После этого набрав в **C-c C-c** , введите в первый раз _Custom Compile_
