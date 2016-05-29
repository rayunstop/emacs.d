(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp")

;; import config
(require 'init-packages)
(require 'init-ui)
(require 'init-keybindings)
(require 'init-defaults)
(require 'init-org)

;; custom config
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

;; load custom file
(load-file custom-file)

load
