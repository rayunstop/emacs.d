(require-package 'company)
(require-package 'company-go)
(require-package 'go-mode)
(require-package 'gotest)

(require 'go-mode)
(require 'company)
(require 'company-go)
(require 'gotest)

(add-hook 'go-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)
            (global-set-key (kbd "C-c C-b") 'pop-tag-mark)
            (global-set-key (kbd "C-c t") 'go-test-current-file)
            (add-hook 'before-save-hook 'gofmt-before-save nil t)))

(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))

(provide 'init-go)
