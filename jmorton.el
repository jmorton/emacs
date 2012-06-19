(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/solarized")

(setq custom-file "~/.emacs.d/jmorton/custom.el")

(when (file-exists-p custom-file) (load custom-file))

(load "jmorton/defaults")
(load "jmorton/defuns")
(load "jmorton/windows")
(load "jmorton/theme")
(load "jmorton/ruby")
(load "jmorton/yaml")
(load "jmorton/js")
(load "jmorton/clojure")
(load "jmorton/scala")
(load "jmorton/haskell")
(load "jmorton/c")
(load "jmorton/org")

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
