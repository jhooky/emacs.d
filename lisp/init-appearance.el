;;; init-appearance.el - emacs aesthetic customizations
(require-package 'zenburn-theme)
(load-theme 'zenburn t)

(when window-system
  (setq scroll-conservatively 1))

(provide 'init-appearance)
