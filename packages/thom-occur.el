;;; thom-occur.el --- Thom's occur config
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-occur.el
;; Created: 2nd December 2014
;; Version: 3
;; Keywords: lisp
;; Package-Requires: (("color-moccur" "20141108.1730")("moccur-edit" "2.16"))

;;; Code:

;;;###autoload
(progn
  (require 'color-moccur)
  (require 'moccur-edit)

  (defadvice moccur-edit-change-file
    (after save-after-moccur-edit-buffer activate)
    (save-buffer))

;;; thom-occur.el ends here
