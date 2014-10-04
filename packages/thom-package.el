;;; thom-package.el --- Thom's emacs package management utilities
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-package.el
;; Created: 30th September 2014
;; Version: 8
;; Keywords: lisp
;; Package-Requires: ()

;;; Code:

(require 'package-x)
(require 'lisp-mnt)

(defun version ()
  (or (lm-header "package-version")
      (lm-header "version")))

(defun delete-previous-version ()
  (when (version)
   (let* ((base (file-name-base (buffer-file-name)))
	  (old-version-filename (concat base "-" (lm-header "version") ".el")))
     (when (file-exists-p old-version-filename)
       (delete-file old-version-filename)))))

(defun bump-version ()
  (when (version)
   (save-excursion
     (let ((old (lm-header "version")))
       (replace-match (number-to-string (1+ (string-to-number old))))))))

(defun update-package-archive ()
  "Update the current package archive with the changes in buffer."
  (when (version)
    (setq-local package-archive-upload-base (file-name-directory (buffer-file-name)))
    (package-upload-buffer)))

;;;###autoload
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'delete-previous-version)
	    (add-hook 'before-save-hook 'bump-version t t)
	    (add-hook 'after-save-hook 'update-package-archive nil t)))

;;; thom-package.el ends here
