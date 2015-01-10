;;; init-company --- Intialize company-mode

;;; Commentary:

;;; As you can see... it is pretty basic.

;;; Code:

(tool-belt/require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)

;;; init-company ends here
