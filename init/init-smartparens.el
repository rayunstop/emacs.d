(require-package 'smartparens)

(require 'smartparens-config)  ;; load default config

(defvar paredit-bindings
  '(
    ;; ("C-S-M-f" . sp-forward-sexp) ;; navigation
    ;; ("C-S-M-b" . sp-backward-sexp)
    ;; ("C-S-M-p" . sp-backward-down-sexp)
    ;; ("C-S-M-n" . sp-up-sexp)
    ("C-M-u" . sp-backward-up-sexp)
    ("C-M-d" . sp-down-sexp)
    ("M-s" . sp-splice-sexp) ;; depth-changing commands
    ("M-<up>" . sp-splice-sexp-killing-backward)
    ("M-<down>" . sp-splice-sexp-killing-forward)
    ("M-r" . sp-splice-sexp-killing-around)
    ("C-)" . sp-forward-slurp-sexp) ;; barf/slurp
    ("C-<right>" . sp-forward-slurp-sexp)
    ("C-}" . sp-forward-barf-sexp)
    ("C-<left>" . sp-forward-barf-sexp)
    ("C-(" . sp-backward-slurp-sexp)
    ("C-M-<left>" . sp-backward-slurp-sexp)
    ("C-{" . sp-backward-barf-sexp)
    ("C-M-<right>" . sp-backward-barf-sexp)
    ("M-S" . sp-split-sexp) ;; misc
    )
  "Alist containing the default paredit bindings to corresponding
smartparens functions.")


(defun use-paredit-bindings ()
  (interactive)
  (sp--populate-keymap paredit-bindings))

(use-paredit-bindings)

(smartparens-global-mode 1)

(provide 'init-smartparens)
