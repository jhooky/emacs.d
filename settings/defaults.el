;;; defaults.el --- A set of basic defaults.

;;; Commentary:

;; Based on techromancy/better-defaults.el

;;; Code:

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurence of CHAR/" t)

(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name "places" *savefiles-dir*))

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
;; Enable pasting selection outside of emacs
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)
(setq save-interprogram-paste-before-kill t)
(setq apropos-do-all t)
(setq mouse-yank-at-point t)
(setq require-final-newline t)
(setq visible-bell t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Just 'y' or 'n'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Save a list of recent files visited
(require 'recentf)
(setq recentf-max-saved-items 100)
(setq recentf-max-menu-items 15)
(setq recentf-save-file
      (expand-file-name "recentf" *savefiles-dir*))
(recentf-mode 1)

(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

;; Undo/redo window configuration with C-c <left>/<right>
(winner-mode 1)

(provide 'defaults)

;;; defaults.el ends here
