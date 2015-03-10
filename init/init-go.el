(require-package 'company)
(require-package 'company-go)
(require-package 'go-mode)
(require-package 'go-eldoc)
(require-package 'go-projectile)
(require-package 'gotest)
(require-package 'helm-go-package)

(require 'go-mode)
(require 'company)
(require 'company-go)
(require 'gotest)
(require 'go-projectile)

(add-to-list 'completion-ignored-extensions ".test")

(define-key 'help-command (kbd "G") 'godoc)

(add-hook 'go-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)
            (local-set-key (kbd "C-c C-b") 'pop-tag-mark)
            (local-set-key (kbd "C-c t") 'go-test-current-file)
            (add-hook 'before-save-hook 'gofmt-before-save nil t)))

(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))

(eval-after-load 'go-mode
  '(progn
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
       (go-eldoc-setup))

     (add-hook 'go-mode-hook (lambda ()
                               (run-hooks 'go-mode-defaults)))

     ;; Enable go-oracle-mode if available
     (let ((oracle (executable-find "oracle")))
       (when oracle
         (setq go-oracle-command oracle)
         (autoload 'go-oracle-mode "oracle")
         (add-hook 'go-mode-hook 'go-oracle-mode)))))

(provide 'init-go)
