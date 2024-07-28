#### in Emacs

C-x C-f temp.html

M-x httpd-start

M-x impatient-mode

#### in Browser

http://localhost:8080/imp/

---

Package impatient-mode is installed.

     Status: Installed in ‘impatient-mode-1.1/’ (unsigned). Delete
    Version: 1.1
     Commit: 96c068d5add95595dc5be42115d100cf99f908ba
    Summary: Serve buffers live over HTTP
   Requires: cl-lib-0.3, simple-httpd-1.4.0, htmlize-1.40
    Website: https://github.com/netguy204/imp.el
 Maintainer: Brian Taylor <el.wubo@gmail.com>
     Author: Brian Taylor <el.wubo@gmail.com>
Other versions: 1.1 (melpa-stable).

---

impatient-mode is a minor mode that publishes the live buffer
through the local simple-httpd server under /imp/<buffer-name>. To
unpublish a buffer, toggle impatient-mode off.

Start the simple-httpd server (`httpd-start') and visit /imp/ on
the local server. There will be a listing of all the buffers that
currently have impatient-mode enabled. This is likely to be found
here:

  http://localhost:8080/imp/

Except for html-mode buffers, buffers will be prettied up with
htmlize before being sent to clients. This can be toggled at any
time with `imp-toggle-htmlize'.

Because html-mode buffers are sent raw, you can use impatient-mode
see your edits to an HTML document live! This is perhaps the
primary motivation of this mode.

To receive updates the browser issues a long poll on the client
waiting for the buffer to change -- server push. The response
happens in an `after-change-functions' hook. Buffers that do not
run these hooks will not be displayed live to clients.

---

нетерпеливый режим - это дополнительный режим, который публикует оперативный буфер
через локальный сервер simple-httpd в /imp/<имя буфера>. Чтобы
отменить публикацию буфера, отключите нетерпеливый режим.

Запустите простой http-сервер (`httpd-start') и перейдите по ссылке /imp/ на
локальном сервере. Там будет список всех буферов, для которых
в данный момент включен нетерпеливый режим. Скорее всего, это можно найти
здесь:

  http://localhost:8080/imp/

За исключением буферов в режиме html, буферы будут обработаны с
помощью htmlize перед отправкой клиентам. Это можно изменить в любое
время с помощью `imp-toggle-htmlize'.

Поскольку буферы в html-режиме отправляются в необработанном виде, вы можете использовать нетерпеливый режим
, чтобы просматривать свои правки в HTML-документе в режиме реального времени! Это, пожалуй
, основная цель этого режима.

Чтобы получать обновления, браузер запускает длительный опрос клиента
, ожидая изменения буфера, - сервер отправляет запрос. Ответ
приходит с помощью перехватчика "после изменения функций". Буферы, которые не
запускают эти перехватчики, не будут отображаться клиентам в реальном времени.

---






