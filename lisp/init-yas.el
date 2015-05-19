;;; init-yas.el --- Initialize yasnippet

;;; Commentary:

;;; I'm loading yasnippet direct from github into 'plugins' folder

;;; Code:

(defun my-yas-minor-mode-hook ()
  "Hooks for yasnippet."
  (setq yas-snippets-dirs '("~/.emacs/snippets")))

(require 'yasnippet)

(add-hook 'yas-minor-mode 'my-yas-minor-mode-hook)

(yas-global-mode t)

(provide 'init-yas)

;;; init-yas.el ends here

