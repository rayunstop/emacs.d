(require-package 'smartparens)

(require 'smartparens)

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (smartparens-strict-mode +1)))

(provide 'init-lisp)
