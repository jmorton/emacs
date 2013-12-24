(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/elpa")

(setq custom-file "~/.emacs.d/jmorton/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(load "jmorton/packages")
(load "jmorton/defaults")
(load "jmorton/theme")
(load "jmorton/clojure")
