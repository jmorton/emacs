(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/jmorton/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(load "jmorton/defaults")
(load "jmorton/defuns")
(load "jmorton/theme")
(load "jmorton/ruby")
(load "jmorton/yaml")
(load "jmorton/school")
(load "jmorton/c")