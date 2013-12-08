(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/elpa")

(setq custom-file "~/.emacs.d/jmorton/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (package-installed-p 'color-theme)
  (package-install 'color-theme))

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))


(load "jmorton/defaults")
(load "jmorton/defuns")
(load "jmorton/windows")
(load "jmorton/theme")
(load "jmorton/clojure")
