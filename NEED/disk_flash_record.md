#### процесс создания флешки

- sudo dd if=image.iso of=/dev/sdc status=progress

#### Записи флешки в терминале:
 
С dd можно создать новую, загрузочную флешку. Вставим новую, пустую. Думаю, что она определится системой как — sdc, но лучше перепроверить:

- sudo fdisk -l 

или 

- lsblk.

#### Теперь команда будет такой:

- sudo dd if=image.iso of=/dev/sdc status=progress



