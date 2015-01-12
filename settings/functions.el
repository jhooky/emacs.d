;;; functions.el --- A collections of functions

;;; Commentary:

;;; Most of this was copied from Bozhidar Batsov's website 'emacsredux.com'

;;; Code:

(defun jhooky/move-beginning-of-line (arg)
  "Move point back to indention of beginning of line.

Move point to the first non-whitespace character on current line.
If point is already there, move to the beginning of the line.

If ARG in not nil or 1, move forward ARG - 1 lines first. If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(defun jhooky/open-line ()
  "Insert an empty line after the current line.
Possition the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

;; (defun prelude-smart-open-line-above ()
;;     "Insert an empty line above the current line.
;; Position the cursor at it's beginning, according to the current mode."
;;     (interactive)
;;     (move-beginning-of-line nil)
;;     (newline-and-indent)
;;     (forward-line -1)
;;     (indent-according-to-mode))

;; (defun jhooky/open-line-above ()
;;   "Insert an empty line above the current line.
;; Position the cursor at it's beginning, according to the current mode."
;;   (interactive)
;;   (move-beginning-of-line 1)
;;   (newline-and-indent)
;;   (forward-line -1)
;;   (indent-according-to-mode))

(defun jhooky/check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

(defun jhooky/do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun jhooky/tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (jhooky/do-yas-expand)))
        (if (jhooky/check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

(provide 'functions)

;;; functions.el ends here
