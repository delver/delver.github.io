;;; thom-text.el --- Thom's emacs config for plain text
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-text.el
;; Created: 30th September 2014
;; Version: 1
;; Keywords: lisp
;; Package-Requires: ((wc-mode "1.3"))

;;; Code:

(require 'wc-mode)

;;;###autoload
(add-hook 'text-mode-hook 'wc-mode)

;;; thom-text.el ends here
