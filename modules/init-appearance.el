;;;  init-appearance.el - emacs aesthetic customizations

;;; Commentary:

;;; Not much to say, just trying to increase font size
;;; Added a way to toggle fullscreen

;;; Code:

(tool-belt/require-package 'zenburn-theme)
(load-theme 'zenburn t)

(set-face-attribute 'default nil :height 160)
(set-frame-font "Source Code Pro")

(defun toggle-fullscreen ()
  "Toggle full screen."
  (interactive)
  (set-frame-parameter nil
                       'fullscreen
                       (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(provide 'init-appearance)

;;; init-appearance.el ends here
