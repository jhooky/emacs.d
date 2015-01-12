;;; init-js.el --- Intialize company-mode

;;; Commentary:

;;; As you can see... it is pretty basic.

;;; Code:

(add-to-list 'load-path "~/local/lib/node_modules/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)

(defun my-js2-mode-hook ()
  "Hooks for js2-mode"
  (setq js2-basic-offset 2)
  (setq js2-highlight-level 3)
  (setq mode-name "JS2")
  (setq js2-global-externs '("module" "require" "setTimeout" "clearTimeout" "setInterval")))

(setq-default js2-strict-missing-semi-warning nil)

;; Set js-mode hooks.

(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook 'my-js2-mode-hook)

(jhooky/add-auto-mode 'js2-mode "\\.js\\'")

(provide 'init-js)

;;; init-js.el ends here
