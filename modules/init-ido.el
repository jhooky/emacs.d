;;; init-ido --- Initialize ido-mode

;;; Commentary:

;;; Pretty basic.

;;; Code:

(require 'ido)

(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t
      ido-create-new-buffer 'always)

(provide 'init-ido)

;;; init-ido ends here
