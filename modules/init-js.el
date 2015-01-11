;;; init-js.el --- Intialize company-mode

;;; Commentary:

;;; As you can see... it is pretty basic.

;;; Code:

(tool-belt/require-package 'js2-mode)

(add-to-list 'load-path "~/local/lib/node_modules/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)

(defun my-js-mode-hook ()
  "Hooks for js-mode"
  (setq js-indent-level 2))

(defun my-js2-mode-hook ()
  "Hooks for js2-mode"
  (setq js2-basic-offset 2)
  (setq js2-highlight-level 3))

;; Set js-mode hooks.
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook 'my-js-mode-hook)

;; Set js2-mode hooks
(add-hook 'js2-mode-hook (lambda () (setq mode-name "js2")))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook 'my-js2-mode-hook)

(tool-belt/add-auto-mode 'js2-mode "\\.js\\'")

(provide 'init-js)

;;; init-js.el ends here
