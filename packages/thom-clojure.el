;;; thom-clojure.el --- Thom's emacs config for clojure
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-clojure.el
;; Created: 30th September 2014
;; Version: 5
;; Keywords: lisp
;; Package-Requires: ((cider "0.7.0")(paredit "22"))

;;; Code:

(require 'clojure-mode)

;;;###autoload
(progn
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
  (setq nrepl-hide-special-buffers t)
  (setq cider-repl-use-clojure-font-lock t)
  (setq cider-repl-history-file "~/.repl-history"))


;;; thom-clojure.el ends here
