(require 'cl)

(setq custom-file (expand-file-name "~/.emacs.d/custom.el")
      visible-bell t
      inhibit-startup-message t)

(when window-system
  (setq scroll-conservatively 1))

(load custom-file t)

;; Packages

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(defvar my-packages '(better-defaults
                      smex))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Activation

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode

(defalias 'yes-or-no-p 'y-or-n-p)
