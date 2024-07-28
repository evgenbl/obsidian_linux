
Попробуйте утилиту **DevilsPie2**  

```
sudo apt-get install devilspie2 && mkdir ~/.config/devilspie2 && cd ~/.config/devilspie2 && touch ./rules.lua && nano ./rules.lua
```

- для каждого окна задайте правило вида, где «3» — абсолютный номер рабочего стола:

```
if (get_window_name() == "Calculator") then	set_window_workspace(3)end 
```

сохраняем этот скрипт и запускаем терминале:  

```
devilspie2 &
```

- если все ок — можно поставить его в автозагрузку

Чтобы узнать windows/application name, поместите в скрипт следующие правила:  

```
debug_print("Window Name: " .. get_window_name());debug_print("Application name: " .. get_application_name())
```

  
и запустите в отладочном режиме:  

```
devilspie2 -d
```

и он вам скажет windows/application name запущенных приложений.  
  
  
После настройки тестируем всё ли работает как вам надо, если всё норм, то добавляем в автозагрузку:  

```
devilspie2 &
```

Проверила выше описанный способ в **Matuntu-TV64-M112-X115** для автозапуска Firefox на рабочем столе 2.  

Файл конфигурации DevilsPie2 выглядит так::  

if (get_window_name() == "Mozilla Firefox") then  
   set_window_workspace(2)  
end  
  
debug_print("Mozilla Firefox: " .. get_window_name());  
debug_print("Firefox: " .. get_application_name())
  
И всё рулит!
 
По DevilsPie2:  
```
if (get_window_name() == "Calculator") then	set_window_workspace(3)end 
```

Вместо **get_window_name** лучше использовать **get_application_name**, ибо имя окна может быть очень загадочным:  
```
Window Name: Как раскидать окна по рабочим столам после загрузки / Хабрахабр - Mozilla FirefoxApplication name: FirefoxWindow Name: x-caja-desktopApplication name: CajaWindow Name: NoneApplication name: terminator
```
  
Да и  **get_application_name** работает для всего приложения, а не для конкретного окна. Запускается в терминале для проверки командой **devilspie2**, без амперсанда в конце. С амперсандом не работает. Если в скрипте всё задано верно, то, при работающем в терминале  DevilsPie2, нужное приложение запускается на указаном рабочем столе. Прерывание работы CTRL-C.  Добавил в автозагрузку - всё отлично работает.  
Мой вариант скрипта rules.lua  

```
if (get_application_name() == "terminator") then        set_window_workspace(2)endif (get_application_name() == "untitled - Atom") then        set_window_workspace(3)endif (get_application_name() == "cherrytree") then        set_window_workspace(4)end
```

Вообще, DevilsPie2 умеет не только закреплять рабочий стол за приложением, но и задавать размер, декорацию и прочая. Полный список в официальном мануале 
- [http://www.gusnan.se/devilspie2/manual.php](http://www.gusnan.se/devilspie2/manual.php)  

Вдруг кому пригодится. При выборе Compiz оконным менеджером DevilsPie2 не работает. Но Compiz сам имеет подобный функционал, реализованный в плагине "Размещение окон" (Place Windows).  

При этом в поле "Тип" имеется большой выбор: заголовок окна, класс окна, тип окна, роль окна, ID окна... Если не требуется что-то иное, то лучше выбрать класс, это общий идентификатор всего приложения. В целом же, плагин предоставляет не меньше возможностей, чем DevilsPie2, так же позволяя задавать окнам размер и прочее. Всё хорошо работает, проверено в Matuntu-TV64-MR112-X115.
