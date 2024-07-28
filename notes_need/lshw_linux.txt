Команда lshw может отобразить ограниченную информацию о CPU. lshw по умолчанию показывает информацию о различных аппаратных частях, а опция '-class' может быть использована для сбора информации о конкретной аппаратной части.

$ sudo lshw -class processor

  *-cpu
       description: CPU
       product: Intel(R) Core(TM)2 Quad CPU    Q8400  @ 2.66GHz
       vendor: Intel Corp.
       physical id: 0
       bus info: cpu@0
       version: Intel(R) Core(TM)2 Quad CPU    Q8400  @ 2.66GHz
       slot: LGA 775
       size: 1998MHz
       capacity: 4GHz
       width: 64 bits
       clock: 333MHz

P.S Однако из приведенного выше результата невозможно определить количество ядер в процессоре.

P.S

С помощью опции -class можно указать тип оборудования, о котором нужно выводить информацию. Доступны такие классы:

sudo lshw | grep \*       
       
jenit@jenit ~ $ sudo lshw -h

Hardware Lister (lshw) - 
использование: lshw [-формат] [-параметры ...]

       lshw -version

	-version        вывод версии программы ()

возможный формат:

	-html           вывод дерева устройств в виде HTML
	-xml            вывод дерева устройств в виде XML
	-json           output hardware tree as a JSON object
	-short          output hardware paths
	-businfo        вывод информации о системной шине

возможные параметры:

	-class КЛАСС    только заданный класс устройств
	-C КЛАСС        то же, что и '-class КЛАСС'
	-c КЛАСС        то же, что и '-class КЛАСС'
	-disable ТЕСТ   отключить тест (например, pci, isapnp, cpuid и т. п.)
	-enable ТЕСТ    включить тест (например, pci, isapnp, cpuid и т. п.)
	-quiet          не показывать статус
	-sanitize       не выводить секретную информацию (серийные номера и т.п.)
	-numeric        выводить цифровые идентификаторы (для PCI, USB и т.п.)
	-notime         exclude volatile attributes (timestamps) from output
 
Если вы хотите создать вывод в виде html-файла, вы можете использовать опцию
-html
.

tecmint@tecmint ~ $ sudo lshw -html > lshw.html
 
      
