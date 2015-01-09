;;; foundation.el --- A rock to stand on.

;;; Commentary:

;; The foundation to any good emacs is built on healthy lisp.

;;; Code:
(require 'package)

;;; Standard package repositories
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))

;;; Fire up package.el
(setq package-enable-at-startup nil) ;; Disable automatic package load
(package-initialize)

(require-package 'diminish)
(require-package 'dash)

;;; Load all minor mode modules
(let ((modules '(init-defaults
		 init-ido
                 init-smex
                 init-uniquify
                 init-paredit
                 init-company
                 init-appearance
                 init-no-scroll)))
  (dolist (module modules)
    (require module)))

;;; Load all major mode modules
(require 'init-web)

(provide 'foundation)
;;; foundation.el ends here
