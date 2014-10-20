(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher"
           minver)))

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-package)

(require 'init-font)

(require 'init-gui)

(require 'init-theme)

(require 'init-helm)

(require 'init-edit)

(require 'init-flycheck)

(require 'init-whitespace)

(require 'init-undo-tree)

(require 'init-holdline-scroll)

(require 'init-deft)

(require 'init-grep)

(require 'init-cscope)

(require 'init-multi-cursors)

(require 'init-markdown-mode)

(require 'init-smartparens)
(require 'init-rainbow)

(require 'init-window)

(require 'init-org)

(require 'init-go)
(require 'init-c)
(require 'init-js)
(require 'init-web)
(require 'init-mmm)

(require 'init-company)

(require 'init-git)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((no-byte-compile t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
