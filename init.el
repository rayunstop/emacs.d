(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher"
           minver)))

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-package)

(require 'init-font)

(require 'init-gui)

(require 'init-theme)

(require 'init-helm)

(require 'init-edit)

(require 'init-whitespace)

(require 'init-undo-tree)

(require 'init-holdline-scroll)

(require 'init-deft)

(require 'init-multi-cursors)

(require 'init-markdown-mode)

(require 'init-smartparens)
(require 'init-rainbow)

(require 'init-window-manager)

(require 'init-org)

(require 'init-go)

(require 'init-c)

(require 'init-web)

(require 'init-company)

(require 'custom)
