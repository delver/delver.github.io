;;; thom-clojure.el --- Thom's emacs config for clojure
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-clojure.el
;; Created: 30th September 2014
;; Version: 14
;; Keywords: lisp
;; Package-Requires: ((cider "0.8.0")(paredit "22")(rainbow-blocks "0.1")(aggressive-indent "0.3"))

;;; Code:

;;;###autoload
(progn
  (require 'cider)
  (require 'cider-interaction)
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'clojure-mode-hook 'rainbow-blocks-mode)
  (add-hook 'clojure-mode-hook 'show-paren-mode)
  (add-hook 'clojure-mode-hook 'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook
	    (lambda ()
	      (add-hook 'after-save-hook 
			(lambda ()
			  (when (and (bound-and-true-p cider-mode) (not (string-equal (buffer-name) "project.clj")))
			    (cider-load-current-buffer)
			    (cider-interactive-eval
			     (format "(clojure.test/run-tests '%s)"
				     (second (read (cider-ns-form)))))))
			nil t)))
  (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
  (add-hook 'cider-repl-mode-hook
	    (lambda ()
	      (global-set-key (kbd "C-c r") 'cider-switch-to-repl-buffer)))
  (setq nrepl-hide-special-buffers t)
  (setq cider-repl-use-clojure-font-lock t)
  (setq cider-repl-history-file "~/.repl-history"))


;;; thom-clojure.el ends here
