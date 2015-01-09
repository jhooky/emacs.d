;;; init-uniquify --- Initialize uniquify

;;; Commentary:

;;;

;;; Code:

(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse
      uniquify-seperator " . "
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*")

(provide 'init-uniquify)

;;; init-uniquify ends here
