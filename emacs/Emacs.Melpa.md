Ctrl + y - вставить в:

.emacs.d/init.el

Enable installation of packages from MELPA by adding an entry to `package-archives` after `(require 'package)` and before the call to `package-initialize` in your `init.el` or `.emacs` file:

```
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
```
