(require 'package)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa"     . "http://melpa.milkbox.net/packages/")))

(setq package-check-signature nil)

(package-initialize)

(when (null package-archive-contents) (package-refresh-contents))

(defvar my-packages '(better-defaults
                      exec-path-from-shell
		      clojure-mode
		      python-mode jedi
		      color-theme color-theme-molokai color-theme-monokai))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(color-theme-molokai)

(setq nrepl-hide-special-buffers t)

(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))
