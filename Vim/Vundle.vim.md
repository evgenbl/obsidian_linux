## [Help Maintain Vundle](https://github.com/VundleVim/Vundle.vim/issues/383)

## [Table of Contents](https://github.com/VundleVim/Vundle.vim#table-of-contents)

- [About](https://github.com/VundleVim/Vundle.vim#about)
- [Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start)
- [Docs](https://github.com/VundleVim/Vundle.vim#docs)
- [Changelog](https://github.com/VundleVim/Vundle.vim#changelog)
- [People Using Vundle](https://github.com/VundleVim/Vundle.vim#people-using-vundle)
- [Contributors](https://github.com/VundleVim/Vundle.vim#contributors)
- [Inspiration & Ideas](https://github.com/VundleVim/Vundle.vim#inspiration--ideas)
- [Also](https://github.com/VundleVim/Vundle.vim#also)
- [TODO](https://github.com/VundleVim/Vundle.vim#todo)

## [About](https://github.com/VundleVim/Vundle.vim#about)

[Vundle](http://github.com/VundleVim/Vundle.vim) is short for _Vim bundle_ and is a [Vim](http://www.vim.org) plugin manager.

[Vundle](http://github.com/VundleVim/Vundle.vim) allows you to...

- keep track of and [configure](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L126-L233) your plugins right in the `.vimrc`
- [install](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L234-L254) configured plugins (a.k.a. scripts/bundle)
- [update](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L255-L265) configured plugins
- [search](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L266-L295) by name all available [Vim scripts](http://vim-scripts.org/vim/scripts.html)
- [clean](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L303-L318) unused plugins up
- run the above actions in a _single keypress_ with [interactive mode](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L319-L360)

[Vundle](http://github.com/VundleVim/Vundle.vim) automatically...

- manages the [runtime path](http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27) of your installed scripts
- regenerates [help tags](http://vimdoc.sourceforge.net/htmldoc/helphelp.html#:helptags) after installing and updating

[Vundle](http://github.com/VundleVim/Vundle.vim) is undergoing an [interface change](https://github.com/VundleVim/Vundle.vim/blob/v0.10.2/doc/vundle.txt#L372-L396), please stay up to date to get latest changes.

[![Gitter-chat](https://camo.githubusercontent.com/6bad539ad87bb258eeb94ad1004886d7290f9300abe2b9c09cefca4034941f51/68747470733a2f2f6261646765732e6769747465722e696d2f56756e646c6556696d2f56756e646c652e76696d2e737667)](https://gitter.im/VundleVim/Vundle.vim) for discussion and support.

[![Vundle-installer](https://camo.githubusercontent.com/4b4b7d1f8253390e61224a56a50248b7576786dfb33f95a0e211bbaac477c6b6/687474703a2f2f692e696d6775722e636f6d2f527565683743632e706e67)](https://camo.githubusercontent.com/4b4b7d1f8253390e61224a56a50248b7576786dfb33f95a0e211bbaac477c6b6/687474703a2f2f692e696d6775722e636f6d2f527565683743632e706e67)

## [Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start)

1. Introduction:
    
    Installation requires [Git](http://git-scm.com) and triggers [`git clone`](http://gitref.org/creating/#clone) for each configured repository to `~/.vim/bundle/` by default. Curl is required for search.
    
    If you are using Windows, go directly to [Windows setup](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows). If you run into any issues, please consult the [FAQ](https://github.com/VundleVim/Vundle.vim/wiki). See [Tips](https://github.com/VundleVim/Vundle.vim/wiki/Tips-and-Tricks) for some advanced configurations.
    
    Using non-POSIX shells, such as the popular Fish shell, requires additional setup. Please check the [FAQ](https://github.com/VundleVim/Vundle.vim/wiki).
    
2. Set up [Vundle](http://github.com/VundleVim/Vundle.vim):
    
    ```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
    
3. Configure Plugins:
    
    Put this at the top of your `.vimrc` to use Vundle. Remove plugins you don't need, they are for illustration purposes.
    
    ```viml
    set nocompatible              " be iMproved, required
    filetype off                  " required
    
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}
    
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    ```
    
4. Install Plugins:
    
    Launch `vim` and run `:PluginInstall`
    
    To install from command line: `vim +PluginInstall +qall`
    
5. (optional) For those using the fish shell: add `set shell=/bin/bash` to your `.vimrc`