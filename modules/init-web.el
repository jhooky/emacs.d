;;; init-web --- Initialize web-mode.el

;;; Commentary:

;;;

;;; Code:

(require-package 'web-mode)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(add-auto-mode 'web-mode "\\.html?\\'" "\\.mustache\\'")


(provide 'init-web)

;;; init-web ends here
