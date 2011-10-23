;;(vendor 'make-regexp)

(vendor 'flex-mode)
(setq auto-mode-alist (cons '("\\.l" . flex-mode) auto-mode-alist))

;; Error:
;;  Symbol's value as variable is void: c-font-lock-keywords
;;
;;(vendor 'bison-mode)
;;(setq auto-mode-alist (cons '("\\.y" . bison-mode) auto-mode-alist))


