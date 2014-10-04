;;; thom-package.el --- Thom's emacs package management utilities
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-package.el
;; Created: 30th September 2014
;; Version: 13
;; Keywords: lisp
;; Package-Requires: ()

;;; Code:

(require 'package-x)
(require 'lisp-mnt)

(defun version ()
  (or (lm-header "package-version")
      (lm-header "version")))

(defun delete-previous-version ()
  (let ((old (version)))
   (when old
     (let* ((base (file-name-base (buffer-file-name)))
	    (old-version-filename (concat base "-" old ".el")))
       (when (file-exists-p old-version-filename)
	 (delete-file old-version-filename))))))

(defun bump-version ()
  (save-excursion
    (let ((old (version)))
      (when old
       (replace-match (number-to-string (1+ (string-to-number old))))))))

(defun update-package-archive ()
  "Update the package in the current buffer, by bumping its
version and updating its package archive."
  (interactive)
  (delete-previous-version)
  (bump-version)
  (setq-local package-archive-upload-base (file-name-directory (buffer-file-name)))
  (package-upload-buffer))

(provide 'thom-package)

;;; thom-package.el ends here
