; (vendor 'clojure-mode)
; (vendor 'clojure-test-mode)
; (vendor 'rainbow-delimiters)
; (vendor 'paredit)

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(setq clojure-project-extra-classpaths
      '(
					; "deps/"
        "src/"
        "classes/"
        "test/"
        ))

(setq clojure-project-jar-classpaths
      '(
					; "deps/"
        "lib/"
        ))

(defun find-clojure-project-jars (path)
  (apply #'append
         (mapcar (lambda (d)
                   (loop for jar in (remove-if (lambda (f) (member f '("." "..")))
                                               (directory-files d t))
                         collect jar into jars
                         finally return jars))
                 (remove-if-not #'file-exists-p
                                clojure-project-jar-classpaths))))

(defun find-clojure-jar (jars)
  (let ((candidates
         (remove-if-not
          (lambda (jar)
            (string-match-p "clojure\\([0-9.-]+\\(SNAPSHOT|MASTER\\)?\\)?\\.jar$" jar))
          jars)))
    (if candidates
        (car candidates)
      (expand-file-name "/usr/local/Cellar/clojure/1.3.0/clojure-1.3.0.jar"))))
