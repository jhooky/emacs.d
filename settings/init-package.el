;;; init-package.el --- A rock to stand on.

;;; Commentary:

;; Setup package.el

;;; Code:

(require 'package)

;;; Standard package repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "http://stable.melpa.org/packages/"))

;;; Fire up package.el
(setq package-enable-at-startup nil) ;; Disable automatic package load
(package-initialize)

;;; Load packages that do not require configuration
;; (tools/require-package 'guru-mode)
;; (tools/require-package 'diminish)
;; (tools/require-package 'dash)

;; ;;; Load minor mode modules
;; (let ((modules '(init-ido
;;                  ;init-smex
;;                  ;init-uniquify
;;                  ;init-paredit
;;                  ;init-yas
;;                  ;init-company
;;                  init-appearance
;;                  init-no-scroll)))
;;   (dolist (module modules)
;;     (require module)))

;; ;;; Load major mode modules
;; (let ((modules '(init-web
;;                  init-js)))
;;   (dolist (module modules)
;;     (require module)))

(provide 'init-package)
;;; init-package.el ends here
