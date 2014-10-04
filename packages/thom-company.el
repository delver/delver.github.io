;;; thom-company.el --- Thom's emacs config for company mode
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom.el
;; Created: 30th September 2014
;; Version: 3
;; Keywords: lisp
;; Package-Requires: ((company "0.8.6-cvs"))

;;; Code:

;;;###autoload
(progn
  (global-company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  (setq company-auto-complete t)
  (setq company-auto-complete-chars "(){}[],.:")
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map [tab] 'company-complete)
  (define-key company-active-map (kbd "TAB") 'company-complete)
  (define-key company-active-map (kbd "S-SPC") 'company-complete-common))

;;; thom-company.el ends here
