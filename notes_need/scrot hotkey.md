## Дополнительно: примеры команд

### 1. Снимок окна или области

> **scrot --select --exec 'mkdir -p ~/shots ; mv \$f ~/shots/ ; gimp ~/shots/\$f &'**

Рекомендую зарегистрировать для этой команды комбинацию _Ctrl+PrintScreen_, после вызова которой нужно выполнить левый щелчок по окну, снимок которого нужно сделать или выделить прямоугольную область для захвата.  
  
При использовании "столешницы" Mate команда проще:  

> **mate-screenshot --area**

#### Как привязать клавишу print-screen к scrot в dwm

/* commands */
static const char *cmdprintscreen[]  = { "scrot", "-d3", "/home/username/Pictures/screenshots/%Y-%m-%d-%s_$wx$h.jpg", NULL };