(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/jmorton/custom.el")
(setq-default truncate-lines t)

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
(load "jmorton/school")
