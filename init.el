;;; This file bootstraps configuration, which is divided into
;;; a number of files

(let ((minver "24.4"))
  (when (version<= emacs-version "24.3")
    (error "Your Emacs is too old -- thos config require v%s or higher" minver)))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;; Bootstrap config

(require 'init-elpa)  ;; Machinery for installing required packages

;;; Load configs for specific features and modes

(require-package 'diminish)
(require-package 'scratch)

(require 'init-ido)
(require 'init-smex)
(require 'init-uniquify)
(require 'init-paredit)
(require 'init-defaults)
(require 'init-appearance)

;;; to move

(setq user-full-name "John Hooks"
      user-mail-address "john@hookscrane.com")

(when window-system
  (setq scroll-conservatively 1))

(load custom-file t)

(provide 'init)
