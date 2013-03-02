(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/elpa")

(setq custom-file "~/.emacs.d/jmorton/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(load "jmorton/defaults")
(load "jmorton/defuns")
(load "jmorton/windows")
(load "jmorton/theme")
(load "jmorton/clojure")


(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
