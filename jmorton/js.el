(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq auto-mode-alist
  (cons '("\\.js" . js2-mode) auto-mode-alist)
  js-indent-level 2
)

(vendor 'js-comint)
(setq inferior-js-program-command "/usr/local/bin/node")

(setq inferior-js-mode-hook
      (lambda ()
        ;; We like nice colors
        (ansi-color-for-comint-mode-on)
        ;; Deal with some prompt nonsense
        (add-to-list 'comint-preoutput-filter-functions
                (lambda (output)
                     (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
                     (replace-regexp-in-string ".*1G.*3G" "> " output))))))


(vendor 'scss-mode)
(setq
  auto-mode-alist (cons '("\\.scss" . scss-mode) auto-mode-alist)
  scss-compile-at-save nil
  css-indent-offset 2
)

(vendor 'coffee-mode)
(setq
  auto-mode-alist (cons '("\\.coffee" . coffee-mode) 
auto-mode-alist))
