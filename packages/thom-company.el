;;; thom-company.el --- Thom's emacs config for company mode
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom.el
;; Created: 30th September 2014
;; Version: 1
;; Keywords: lisp
;; Package-Requires: ((company "0.8.6-cvs"))

;;; Code:

;;;###autoload
(progn
  (global-company-mode)
  (setq company-idle-delay t)
  (setq company-minimum-prefix-length 2))

;;; thom-company.el ends here
