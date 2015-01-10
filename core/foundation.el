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

;;; Load foundation core defaults
(require 'defaults)
(require 'quick-keys)

;;; Load packages that do not require configuration
(tool-belt/require-package 'cl-lib)
(tool-belt/require-package 'guru-mode)
(tool-belt/require-package 'diminish)
(tool-belt/require-package 'dash)

;;; Load minor mode modules
(let ((modules '(init-ido
                 init-smex
                 init-uniquify
                 init-paredit
                 init-yas
                 init-company
                 init-appearance
                 init-no-scroll)))
  (dolist (module modules)
    (require module)))

;;; Load major mode modules
(let ((modules '(init-web
                 init-js)))
  (dolist (module modules)
    (require module)))

(provide 'foundation)
;;; foundation.el ends here
