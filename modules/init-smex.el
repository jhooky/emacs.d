;;; init-smex --- Initialize smex

;;; Commentary:

;;; Replaces traditional find command with smex

;;; Code:

(tool-belt/require-package 'smex)

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'init-smex)

;;; init-smex ends here
