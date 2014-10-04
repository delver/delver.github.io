;;; thom-elisp.el --- Thom's elisp library
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-elisp.el
;; Created: 30th September 2014
;; Version: 1
;; Keywords: lisp
;; Package-Requires: ((paredit "22")(rainbow-blocks "0.1"))

;;; Code:

;;;###autoload
(progn
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-blocks-mode))

;;; thom-elisp.el ends here
