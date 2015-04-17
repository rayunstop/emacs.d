(require-package 'smartparens)

(defun init-lisp-env ()
  (smartparens-strict-mode +1))

(require-package 'ipretty)
(ipretty-mode 1)

;; ----------------------------------------------------------------------------
;; Highlight current sexp
;; ----------------------------------------------------------------------------

(require-package 'hl-sexp)
;; Prevent flickery behaviour due to hl-sexp-mode unhighlighting before each command
(after-load 'hl-sexp
  (defadvice hl-sexp-mode (after unflicker (&optional turn-on) activate)
    (when turn-on
      (remove-hook 'pre-command-hook #'hl-sexp-unhighlight))))

(add-hook 'emacs-lisp-mode-hook 'init-lisp-env)

(require-package 'racket-mode)
(add-hook 'racket-mode-hook
          (lambda ()
            (init-lisp-env)
            (define-key racket-mode-map (kbd "C-c r") 'racket-run)))

(provide 'init-lisp)
