(require-package 'go-mode)
(require-package 'company-go)
(require-package 'go-projectile)
(require-package 'gotest)
(require-package 'golint)
(require-package 'go-gopath)

(add-to-list 'completion-ignored-extensions ".test")

(defun go-mode-defaults ()
  ;; Prefer goimports to gofmt if installed
  (let ((goimports (executable-find "goimports")))
    (when goimports
      (setq gofmt-command goimports)))

  (add-hook 'before-save-hook 'gofmt-before-save nil t)
  (whitespace-toggle-options '(tabs))
  (set (make-local-variable 'company-backends) '(company-go))

  (local-set-key (kbd "C-c C-b") 'pop-tag-mark)
  (local-set-key (kbd "C-c t") 'go-test-current-file)
  (setq tab-width 4))

(add-hook 'go-mode-hook 'go-mode-defaults)


(provide 'init-go)
