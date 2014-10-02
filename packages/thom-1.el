;;; thom.el --- Thom's emacs config
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom.el
;; Created: 30th September 2014
;; Version: 1
;; Keywords: lisp
;; Package-Requires: ((thom-ido "1")(thom-mac "1")(thom-text "1")(thom-clojure "3"))

;;; Code:


;;;###autoload
(progn
  (inhibit-startup-screen t)
  (setq backup-inhibited t)
  (setq auto-save-default nil)
  (global-linum-mode 1)
  (column-number-mode t)
  (setq-default truncate-lines t)
  (scroll-bar-mode nil)
  (tool-bar-mode nil))

;;; thom.el ends here
