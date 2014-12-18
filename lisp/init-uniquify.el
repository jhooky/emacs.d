(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse
      uniquify-seperator " . "
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*")

(provide 'init-uniquify)
