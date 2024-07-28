 
### Поддерживаемые методы

Если в вашей среде Python не установлен pip, существует два механизма: чтобы установить pip, поддерживаемый непосредственно его сопровождающими:

    ensurepip

    get-pip.py

-------------------------------------------------------------

#### ensurepip

Python поставляется с ensurepip модуль , который может установить pip в среда Python.

Линукс

$ python -m ensurepip --upgrade

Более подробно о том, как ensurepip работает и как его можно использовать, доступен в документации стандартной библиотеки.

----------------------------------------------------------

#### get-pip.py

Это скрипт Python, который использует некоторую логику начальной загрузки для установки. pip.

Загрузите скрипт с https://bootstrap.pypa.io/get-pip.py

Откройте терминал/командную строку, cd в папку, содержащую get-pip.pyфайл и запустите:

Линукс

$ python get-pip.py

-----------------------------------------------------------

Взято: https://pip.pypa.io/en/stable/installation/

WARNING: The scripts pip3 and pip3.9 are installed in '/HOME/JENIT/.LOCAL/BIN' which is not on PATH.
Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
