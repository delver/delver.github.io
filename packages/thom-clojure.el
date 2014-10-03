;;; thom-clojure.el --- Thom's emacs config for clojure
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-clojure.el
;; Created: 30th September 2014
;; Version: 4
;; Keywords: lisp
;; Package-Requires: ((cider "0.7.0")(paredit "22"))

;;; Code:

(require 'clojure-mode)

;;;###autoload
(add-hook 'clojure-mode-hook 'paredit-mode)

;;; thom-clojure.el ends here
