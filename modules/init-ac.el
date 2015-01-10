;;; init-ac.el --- Initialize ido-mode

;;; Commentary:

;;; Needs to be loaded after init-yasnippet.el

;;; Code:

(tool-belt/require-package 'auto-complete)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(provide 'init-ac)

;;; init-ac ends here
