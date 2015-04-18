(setq user-mail-address "yzprofiles@gmail.com")
(setq user-full-name "yzprofile")

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

(setq inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/Library/Mobile Documents/com~apple~CloudDocs/GTD/done.org" "~/Library/Mobile Documents/com~apple~CloudDocs/GTD/project.org" "~/Library/Mobile Documents/com~apple~CloudDocs/GTD/life.org" "~/Library/Mobile Documents/com~apple~CloudDocs/GTD/task.org" "~/Library/Mobile Documents/com~apple~CloudDocs/GTD/inbox.org")))
 '(safe-local-variable-values (quote ((encoding . utf-8) (no-byte-compile t)))))

(custom-set-faces)
