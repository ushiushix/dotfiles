(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;; W3M hack
(require 'w3m-e21)
(provide 'w3m-e23)
;; Mew
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
