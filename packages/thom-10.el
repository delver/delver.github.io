;;; thom.el --- Thom's emacs config
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom.el
;; Created: 30th September 2014
;; Version: 10
;; Keywords: lisp
;; Package-Requires: ((thom-ido "1")(thom-text "1")(thom-clojure "4")(linum-off "0.1"))

;;; Code:

;;;###autoload
(progn
  (setq inhibit-startup-screen t)
  (setq backup-inhibited t)
  (setq auto-save-default nil)
  (global-linum-mode 1)
  (setq linum-format "%d")
  (require 'linum-off)
  (column-number-mode t)
  (setq-default truncate-lines t)
  (setq-default indicate-empty-lines t)
  (set-frame-parameter nil 'left-fringe 2)
  (set-face-attribute 'fringe nil :background "white")
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (set-face-attribute 'default nil :height 100))

;;; thom.el ends here