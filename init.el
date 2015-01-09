;;; init --- This file bootstraps configuration

;;; Commentary:

;;; Configuration is divided into multiple files all loaded by init.el

(let ((minver "24.4"))
  (when (version<= emacs-version "24.3")
    (error "Your Emacs is too old -- thos config require v%s or higher" minver)))

(defvar *core-dir* (expand-file-name "core" user-emacs-directory)
  "This is the core directory of foundation.")
(message *core-dir*)
(defvar *modules-dir* (expand-file-name "modules" user-emacs-directory)
  "This is the module directory of foundation.")
(message *modules-dir*)
(defvar *plugins-dir* (expand-file-name "plugins" user-emacs-directory)
  "This is the plugins directory for packages outside of foundation.")
(message *plugins-dir*)
(defvar *savefile-dir* (expand-file-name "savefile" user-emacs-directory)
  "This directory contains save and history files.")
(message *savefile-dir*)

;; Create some key directories if they do not exist.
(unless (file-exists-p *savefile-dir*)
  (make-directory *savefile-dir*))
(unless (file-exists-p *plugins-dir*)
  (make-directory *plugins-dir*))

(add-to-list 'load-path *core-dir*)
(add-to-list 'load-path *modules-dir*)
(add-to-list 'load-path *plugins-dir*)

;; Load utilites
(require 'tool-belt)

;; Add all subdirectories of *plugins-dir*
(add-subfolders-to-load-path *plugins-dir*)

;; Load the Foundation
(require 'foundation)


;; to move
;; (load custom-file t)

(provide 'init)

;;; init ends here
