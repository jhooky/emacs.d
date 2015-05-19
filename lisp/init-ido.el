;;; init-ido --- Initialize ido-mode

;;; Commentary:

;;; Interactively Do Things

;;; Code:

(require 'ido)
(require 'ido-ubiquitous)
(require 'ido-vertical-mode)
(require 'flx-ido)
(require 'smex)

;; ido standard
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-save-directory-list-file
      (expand-file-name "ido.last" *savefiles-dir*))

;; ido ubiquitous
(ido-ubiquitous-mode 1)

;; flx ido - smarter fuzzy matching
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; Disable ido faces to see flx highlights.

;; ido vertical mode
(ido-vertical-mode)

;; smex
(setq smex-save-file (expand-file-name "smex-items" *savefiles-dir*))
(smex-initialize)

(provide 'init-ido)

;;; init-ido ends here
