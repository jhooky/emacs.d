;;; init.el --- This file bootstraps configuration

;;; Commentary:

;;; Configuration is divided into multiple files all loaded by init.el

;;; Code:

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please
(setq inhibit-startup-message t)

(let ((minver "24.4"))
  (when (version<= emacs-version "24.3")
    (error "Your Emacs is too old -- thos config require v%s or higher" minver)))

(defvar *site-lisp-dir*
  (expand-file-name "site-lisp/" user-emacs-directory)
  "This directory contains elisp packages")
(defvar *setting-dir*
  (expand-file-name "settings/" user-emacs-directory)
  "This directory contains my personal settings")
(defvar *savefiles-dir*
  (expand-file-name "savefiles/" user-emacs-directory)
  "This directory contains save and history files.")

;; Add elisps to load-path
(add-to-list 'load-path *site-lisp-dir*)
(add-to-list 'load-path *setting-dir*)

;; Create some key directories if they do not exist.
(unless (file-exists-p *savefiles-dir*)
  (make-directory *savefiles-dir*))

;; Fire up package.el
(require 'init-package)

;; Load utilites
(require 'tools)
(require 'appearance)
(require 'defaults)
(require 'key-bindings)
(require 'functions)

(jhooky/packages-install
 '(magit
   paredit
   smartparens
   diminish
   company
   flycheck
   flx
   flx-ido
   ido-vertical-mode
   ido-ubiquitous
   smex
   yasnippet
   guide-key
   simple-httpd
   whitespace-cleanup-mode
   js2-mode
   skewer-mode))
   
;; Add all subdirectories of site-lisp-dir
(jhooky/add-subfolders-to-load-path *site-lisp-dir*)

(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r"))
(setq guide-key/popup-window-position 'bottom)
(guide-key-mode 1)
(diminish 'guide-key-mode)

(require 'init-ido)
(require 'init-paredit)
(require 'init-smartparens)
(require 'init-yas)
(require 'init-company)
(require 'init-no-scroll)

(require 'init-js)

(provide 'init)

;;; init.el ends here
