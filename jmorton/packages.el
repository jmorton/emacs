(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (package-installed-p 'color-theme)
  (package-install 'color-theme))

(unless (package-installed-p 'monokai-theme)
  (package-install 'monokai-theme))

(unless (package-installed-p 'molokai-theme)
  (package-install 'molokai-theme))

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(unless (package-installed-p 'paredit)
  (package-install 'paredit))

