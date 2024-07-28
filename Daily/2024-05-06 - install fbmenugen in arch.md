В _Arch [Linux](https://www.vivaolinux.com.br/linux/)_, с использованием:  
  
 **wget** [https://aur.archlinux.org/packages/fb/fbmenugen/fbmenugen.tar.gz](https://aur.archlinux.org/packages/fb/fbmenugen/fbmenugen.tar.gz)  
 **tar -zxf fbmenugen.tar.gz  
$ cd fbmenugen  
$ makepkg -si**  
  
Или:  
  
 **упаковщик | yaourt -S fbmenugen**  
  
И в других дистрибутивах:  
  
 **wget -nv** [http://trizen.googlecode.com/files/fbmenugen-0.7.2.tar.gz](http://trizen.googlecode.com/files/fbmenugen-0.7.2.tar.gz)  
 **tar -zxf fbmenugen-0.7.2.tar.gz  
$ chmod +x fbmenugen  
$ sudo mv fbmenugen /usr/local/bin/  
$ fbmenugen --help  
$ fbmenugen -i**

#### Генератор меню Fluxbox (с поддержкой значков)

```text
usage: fbmenugen [options]

menu:
    -g  : generate a new menu
    -i  : include icons
    -p  : pipe menu (prints to STDOUT)

misc:
    -u         : update the config file
    -d         : regenerate the cache file
    -S <file>  : absolute path to the schema.pl file
    -C <file>  : absolute path to the config.pl file
    -o <file>  : menu file (default: ~/.fluxbox/menu)

info:
    -h         : print this message and exit
    -v         : print version and exit

example:
    fbmenugen -g -i      # generates a menu with icons

=> Config file: ~/.config/fbmenugen/config.pl
=> Schema file: ~/.config/fbmenugen/schema.pl
```

## Installation of fbmenugen in arch

- Required dependencies:
    
    - perl>=5.14.0
    - perl-gtk3 ([Gtk3](https://metacpan.org/pod/Gtk3)) (for icons)
    - perl-data-dump ([Data::Dump](https://metacpan.org/pod/Data::Dump))
    - perl-linux-desktopfiles>=0.25 ([Linux::DesktopFiles](https://metacpan.org/pod/Linux::DesktopFiles))
- Optional dependencies:
    
    - perl-file-desktopentry ([File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry))

### Installation process:

- place the `fbmenugen` file inside your PATH
- place the `schema.pl` file inside `~/.config/fbmenugen/`

### Running:

- to generate a menu with icons, execute: `fbmenugen -i`
- to generate a menu without icons, execute: `fbmenugen`

### Locale support:

- If [File::DesktopEntry](https://metacpan.org/pod/File::DesktopEntry) is installed, `fbmenugen` will use it to provide locale support.

### Customizing:

- the `schema.pl` file provides a direct customization access to the menu that will be generated.
- adding or removing a given entry from the `schema.pl` file, is reflected inside the generated menu.