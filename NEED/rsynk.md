#### rsynk

````
- /

rsync -aAXvzh / --exclude={"/home/*","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /home/jenit/2022-08-13/

&&&&&&

sudo rsync -aAXvzh / --exclude={"/home/*","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /home/jenit/2022-08-13/ 

&&&&&&

- /home

rsync -aAXvzh /home/jenit --exclude={'/jenit/.cache','/jenit/.local','/jenit/мое_фото','/jenit/мое_видео','/jenit/музыка_видео','/jenit/Музыка'} /run/media/jenit/da6b9bec-08ef-4205-ac88-d373c65699bd/slackware_14.2_home/ 

sudo rsync -aAXvzh /home/jenit --exclude={'/jenit/.cache','/jenit/.local','/jenit/мое_фото','/jenit/мое_видео','/jenit/музыка_видео','/jenit/Музыка'} /run/media/jenit/da6b9bec-08ef-4205-ac88-d373c65699bd/slackware_14.2_home/ 
````
#### ==**_Без sudo_**:==

нужно отредактировать **/etc/sudoers** и позволить одному юзеру запускать твой файл с привелегиями рута Файл обязательно нужно запретить редактировать данному юзеру

> - Allow members of group sudo to execute any command
>     
> - (Разрешить членам группы sudo выполнять любую команду)
>     
> 
> %sudo ALL=(ALL:ALL) ALL user ALL = NOPASSWD: /home/user/Documents/script.sh
