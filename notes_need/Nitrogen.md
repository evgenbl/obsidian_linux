[Nitrogen](https://github.com/l3ib/nitrogen) — это быстрый и легковесный менеджер обоев рабочего стола X Window System (использует GTK2).

## Установка

[Установите](https://wiki.archlinux.org/title/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D0%B5 "Установите") пакет [nitrogen](https://archlinux.org/packages/?name=nitrogen).

## Использование

Для вывода справки выполните `nitrogen --help`. Следующие примеры помогут вам освоиться:

### Установка обоев

Чтобы установить и показывать обои из определённого каталога рекурсивно, выполните:

$ nitrogen /путь/к/каталогу/с/изображениями/

Чтобы установить и показывать обои из определнного каталога _не_ рекурсивно, выполните:

$ nitrogen --no-recurse /путь/к/каталогу/с/изображениями/

### Сохранение обоев

Чтобы выбранные обои устанавливались в последующих сессиях, добавьте в [автозапуск](https://wiki.archlinux.org/title/%D0%90%D0%B2%D1%82%D0%BE%D0%B7%D0%B0%D0%BF%D1%83%D1%81%D0%BA "Автозапуск") следующую команду:

$ nitrogen --restore &

## Решение проблем

### Зависание экрана на двойном мониторе

Удалите текущую конфигурацию приложения: [[1]](https://bbs.archlinux.org/viewtopic.php?id=46245)

$ rm -r ~/.config/nitrogen/