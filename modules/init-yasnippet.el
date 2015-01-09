;;; init-yasnippet --- Initialize yasnippet

;;; Commentary:

;;; I'm loading yasnippet direct from github into 'plugins' folder

;;; Code:

(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                     ;; personal snippets
        "~/.emacs.d/plugins/yasnippet/yasmate/snippets"
        "~/.emacs.d/plugins/yasnippet/snippets")) ;; the default collection

(yas-reload-all)

(provide 'init-yasnippet)

;;; init-ido ends here

