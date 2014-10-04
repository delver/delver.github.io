;;; thom-ido.el --- Thom's emacs config for ido
;; Copyright (C) 2014 Thom Lawrence

;; Author: Thom Lawrence <thom@delver.io>
;; Maintainer: Thom Lawrence <thom@delver.io>
;; URL: http://github.com/delver/delver.github.io/packages/thom-ido.el
;; Created: 30th September 2014
;; Version: 3
;; Keywords: lisp
;; Package-Requires: ((smex "3.0")(ido-ubiquitous "2.15")(ido-yes-or-no "1.1"))

;;; Code:


;;;###autoload
(progn
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (ido-ubiquitous)
  (ido-yes-or-no-mode)
  (require 'smex)
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

;;; thom-ido.el ends here
