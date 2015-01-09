;;; defaults.el --- A set of basic defaults.

;;; Commentary:

;; Based on techromancy/better-defaults.el

;;; Code:
(progn
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (setq ido-save-directory-list-file "ido.last")

  (menu-bar-mode -1)
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
  (when (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))

  (autoload 'zap-up-to-char "misc"
    "Kill up to, but not including ARGth occurrence of CHAR." t)

  (require 'uniquify)
  (setq uniquify-buffer-name-style  'forward)

  (require 'saveplace)
  (setq-default save-place t)

  (global-set-key (kbd "M-/") 'hippie-expand)
  (global-set-key (kbd "C-x C-b") 'ibuffer)
  (global-set-key (kbd "M-z") 'zap-up-to-char)

  (global-set-key (kbd "C-s") 'isearch-forward-regexp)
  (global-set-key (kbd "C-r") 'isearch-backward-regexp)
  (global-set-key (kbd "C-M-s") 'isearch-forward)
  (global-set-key (kbd "C-M-r") 'isearch-backward)

  (show-paren-mode 1)
  (setq-default indent-tabs-mode nil)

  (setq x-select-enable-clipboard t)
  (setq save-interprogram-paste-before-kill t)
  (setq mouse-yank-at-point t)
  (setq require-final-newline t)
  (setq visible-bell t)
  (setq save-place-file (concat user-emacs-directory "places"))
  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))
  (setq custom-file (expand-file-name "custom.el" user-emacs-directory)))

(provide 'defaults)
;;; defaults.el ends here
