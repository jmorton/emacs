(vendor 'scss-mode)
(setq auto-mode-alist (cons '("\\.scss" . scss-mode) auto-mode-alist))

(vendor 'coffee-mode)
(setq auto-mode-alist (cons '("\\.js" . js-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.coffee" . coffee-mode) auto-mode-alist))
