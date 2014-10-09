;;; thom-linux.el --- Thom's emacs config for Linux
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-linux.el
;; Created: 30th September 2014
;; Version: 3
;; Keywords: lisp
;; Package-Requires: ()

;;; Code:

;;;###autoload
(setq redisplay-dont-pause t
      scroll-margin 10
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1
      mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-follow-mouse 't
      x-super-keysym 'meta)

;;; thom-linux.el ends here
