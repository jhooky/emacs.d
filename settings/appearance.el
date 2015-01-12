;;;  appearance.el - emacs aesthetic customizations

;;; Commentary:

;;; Not much to say, just trying to increase font size
;;; Added a way to toggle fullscreen

;;; Code:

(jhooky/require-package 'zenburn-theme)
(load-theme 'zenburn t)

(set-face-attribute 'default nil :height 140)
(set-frame-font "Source Code Pro")

(defun toggle-fullscreen ()
  "Toggle full screen."
  (interactive)
  (set-frame-parameter nil
                       'fullscreen
                       (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(provide 'appearance)

;;; appearance.el ends here
