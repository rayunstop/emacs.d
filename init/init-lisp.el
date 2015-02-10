(require-package 'smartparens)

(require 'smartparens)

(defun init-lisp-env ()
  (smartparens-strict-mode +1))

(add-hook 'emacs-lisp-mode-hook 'init-lisp-env)

(require-package 'racket-mode)
(add-hook 'racket-mode-hook
          (lambda ()
            (init-lisp-env)
            (define-key racket-mode-map (kbd "C-c r") 'racket-run)))

(provide 'init-lisp)
