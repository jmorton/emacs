(vendor 'haskell-mode)
(load "haskell-site-file.el")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'font-lock-mode)

(setq auto-mode-alist (cons '(".hs" . haskell-mode) auto-mode-alist))

(setq haskell-program-name "/usr/bin/ghci")
