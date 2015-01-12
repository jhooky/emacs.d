;;; init-paredit --- Intialize paredit

;;; Commentary:

;;; Currenty only using paredit for lisp languages

;;; Code:

(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code." t)

(with-eval-after-load 'paredit
            (diminish 'paredit-mode " Par"))

(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)

(provide 'init-paredit)

;;; init-paredit ends here
