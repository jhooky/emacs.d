;;; init-elpa.el --- Initialize elpa

;;; Commentary:

;;; require-package installs packages if not already installed

;;; Code:

(require 'package)

;; Standard package repositories
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))

;; On-demand installation of packages
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available packages list will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (package-refresh-contents)
      (require-package package min-version t))))

;; Fire up package.el

;; Disable automatic package loading
(setq package-enable-at-startup nil)
(package-initialize)

(provide 'init-elpa)

;;; init-elpa ends here
