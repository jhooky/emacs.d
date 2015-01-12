;; Map C-x M-f to ido find file
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)

;; ;; Map C-x f to recentf ido
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;; ;; Map M-x to smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ;; Map old M-x to C-c C-c M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; ;; M-i for back-to-indentation
(global-set-key (kbd "M-i") 'back-to-indentation)

;; ;; Use shell-like backspace C-h, rebind help to F1
(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "<f1>") 'help-command)

(global-set-key (kbd "M-h") 'backward-kill-word)

;; ;; Remap C-a to `jhooky/move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'jhooky/move-beginning-of-line)

;; ;; Map M-o to `jhooky/open-line'
(global-set-key [(meta o)] 'jhooky/open-line)

;; ;; Map M-O to `jhooky/open-line-above'
;(global-set-key [(meta O)] 'prelude-smart-open-line-above)

;; ;; Map tab to `jhooky/tab-indent-or-complete'
(global-set-key [tab] 'jhooky/tab-indent-or-complete)

(provide 'key-bindings)



