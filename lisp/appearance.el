;;;  appearance.el - emacs aesthetic customizations

;;; Commentary:

;;; Not much to say, just trying to increase font size
;;; Added a way to toggle fullscreen

;;; Code:

(jhooky/require-package 'monokai-theme)
(jhooky/require-package 'zenburn-theme)
;(load-theme 'zenburn t)
(load-theme 'monokai t)

(set-face-attribute 'default nil :height 140)
;(set-frame-font "Source Code Pro")

(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(provide 'appearance)

;;; appearance.el ends here
