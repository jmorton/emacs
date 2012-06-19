(setq inhibit-splash-screen t
			cua-enable-cua-keys nil)

;; Focus. Grasshoppa.
(ns-toggle-fullscreen)

(cua-mode t)

;; Right... I don't use those anyhow.
(set-scroll-bar-mode nil)


;; I like being able to see wtf is going on with invisible characters in my source files.
(require 'whitespace)
(autoload 'whitespace-mode "whitespace" "Toggle whitespace" t)
(autoload 'whitespace-toggle-options "whitespace" "Toggle with `whitespace-mode' options." t)
(global-set-key (kbd "C-c w") 'global-whitespace-mode)
(global-set-key (kbd "C-c W") 'whitespace-cleanup)


;; Interactively Do Things
(setq ido-everywhere t)
(setq ido-enable-flexible-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(setq ido-file-extensions-order '(".clj" ".rb" ".erb" "GEMFILE"))
(ido-mode 1)

(setq-default truncate-lines t)

;; Backup files are good, but I rarely use them.  Let's put them in the
;; .emacs.d directory somewhere.
;; http://stackoverflow.com/questions/2680389/how-to-remove-all-files-ending-with-made-by-emacs
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t
  version-control t
  delete-old-versions t
  kept-new-versions 20
  kept-old-versions 5
  )

