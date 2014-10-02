;;; thom-mac.el --- Thom's emacs config for Macs
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-mac.el
;; Created: 30th September 2014
;; Version: 1
;; Keywords: lisp
;; Package-Requires: ()

;;; Code:

;;;###autoload
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter
   nil 'fullscreen
   (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

;;;###autoload
(progn
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'hyper)
  (global-set-key [(hyper a)] 'mark-whole-buffer)
  (global-set-key [(hyper v)] 'yank)
  (global-set-key [(hyper c)] 'kill-ring-save)
  (global-set-key [(hyper s)] 'save-buffer)
  (global-set-key [(hyper l)] 'goto-line)
  (global-set-key [(hyper w)] (lambda () (interactive) (delete-window)))
  (global-set-key [(hyper z)] 'undo)
  (global-set-key [(hyper q)] 'save-buffers-kill-terminal)
  (global-set-key [(hyper return)] 'toggle-fullscreen)
  (global-set-key (kbd "M-3") (lambda() (interactive) (insert-string "#")))
  (set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs-mac/emacs-24.3-mac-4.8/bin/emacsclient"))

;;; thom-mac.el ends here
