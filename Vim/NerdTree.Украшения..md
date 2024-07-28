
> Если вы используете больше Vim, вам понадобится меню в виде дерева ботаников. Если вы используете больше меню, это все равно, что украсить его.

Наиболее часто используемый плагин для украшения Nerdtree - это[`vim-devicons`](https://github.com/ryanoasis/vim-devicons), Подробный метод настройки доступен на официальном сайте github, в основном в следующем виде:

1. Установка`Nerd Font`Шрифт,[URL здесь](https://github.com/ryanoasis/nerd-fonts). Метод установки шрифтов отличается для каждой компьютерной системы. Поскольку все шрифты соответствуют стандарту 3G, самый быстрый способ -[Домашняя страница веб-сайта](http://nerdfonts.com/)Нажмите Download, чтобы скачать`Droid Sans Mono Nerd`Размер этого шрифта составляет около 8 МБ. Если это Mac, выберите шрифт из сжатого пакета.`Droid Sans Mono Nerd Font Complete.otf`, Дважды щелкните, чтобы установить.
2. В системных настройках Terminal.app или iTerm2 установите шрифт`Droid Sans Mono Nerd`。
3. в`~/.vimrc`Добавить в плагин управления офисом`Plugin 'ryanoasis/vim-devicons'`, Перезапустите vim, а затем`:PluginInstall`Загрузить и установить.
4. в`~/.vimrc`Настройте кодировку по умолчанию в`set encoding=utf8`И шрифт по умолчанию`set guifont=DroidSansMono_Nerd_Font:h11`

## Далее украсьте:

Плагин.Улучшения плагина.

`vim-nerdtree-syntax-highlight`

[`vim-nerdtree-syntax-highlight`](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)

Плагин соответствует указанному выше`vim-devicons` 
Непосредственно в vimrc:
`Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'`
и
`:PluginInstall`

Примечание: 

после установки`vim-devicons` скорость vim была немного замедлена, и вы почувствуете более очевидную задержку после установке этого плагина.

Вот и все.