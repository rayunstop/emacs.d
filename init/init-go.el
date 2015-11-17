(require-package 'go-mode)
(require-package 'company)
(require-package 'company-go)
(require-package 'go-eldoc)
(require-package 'go-projectile)
(require-package 'gotest)
(require-package 'helm-go-package)

(add-to-list 'completion-ignored-extensions ".test")

(define-key 'help-command (kbd "G") 'godoc)

(defun go-mode-defaults ()
  ;; Prefer goimports to gofmt if installed
  (let ((goimports (executable-find "goimports")))
    (when goimports
      (setq gofmt-command goimports)))

  ;; gofmt on save
  (add-hook 'before-save-hook 'gofmt-before-save nil t)

  ;; stop whitespace being highlighted
  (whitespace-toggle-options '(tabs))

  ;; Company mode settings
  (set (make-local-variable 'company-backends) '(company-go))

  ;; El-doc for Go
  (go-eldoc-setup)

  (company-mode)
  (local-set-key (kbd "C-c C-b") 'pop-tag-mark)
  (local-set-key (kbd "C-c t") 'go-test-current-file)
  (setq tab-width 4))

(add-hook 'go-mode-hook 'go-mode-defaults)

(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))


(provide 'init-go)
