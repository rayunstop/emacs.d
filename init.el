(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher"
           minver)))

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-package)

(require 'init-personal nil t)

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

(require 'init-cscope)

(require 'init-multi-cursors)

(require 'init-markdown-mode)

(require 'init-smartparens)
(require 'init-rainbow)

(require 'init-window)

(require 'init-org)
(require 'init-image)

(require 'init-lisp)
(require 'init-haskell)
(require 'init-go)
(require 'init-c)
(require 'init-js)
(require 'init-coffee)
(require 'init-html)
(require 'init-web)
(require 'init-python)
(require 'init-php)
(require 'init-lua)
(require 'init-mmm)
(require 'init-company)
(require 'init-git)
(require 'init-ace)
(require 'init-guide-key)
(require 'init-projectile)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
