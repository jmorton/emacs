; link ~/.emacs to this file
;  ln -s ~/.emacs ~/Projects/emacs/emacs.el
; link ~/.emacs.d to the directory containing
; this file.
;  ln -s ~/.emacs.d ~/Projects/emacs

(add-to-list 'load-path "~/.emacs.d/")
(load "jmorton")

