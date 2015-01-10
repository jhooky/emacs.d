;;; quick-keys --- A combination of key-bindings to speed me up

;;; Commentary:

;;; Most of this was copied from Bozhidar Batsov's website 'emacsredux.com'

;;; Code:

(defun quick/move-beginning-of-line (arg)
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

(defun quick/open-line ()
  "Insert an empty line after the current line.
Possition the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun quick/open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(defun quick/check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

(defun quick/do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun quick/tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (quick/do-yas-expand)))
        (if (quick/check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

;; Remap C-a to `quick/move-beginning-of-line'
(global-set-key [remap move-beginning-of-line]
                'quick/move-beginning-of-line)

;; Map M-o to `quick/open-line'
(global-set-key [(meta o)] 'quick/open-line)

;; Map M-O to `quick/open-line-above'
(global-set-key [(meta O)] 'quick/open-line-above)

;; Map tab to `quick/tab-indent-or-complete'
(global-set-key [tab] 'quick/tab-indent-or-complete)

(provide 'quick-keys)

;;; quick-keys ends here
