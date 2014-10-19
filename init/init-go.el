(require-package 'company)
(require-package 'company-go)
(require-package 'go-mode)
(require-package 'gotest)

(require 'go-mode)
(require 'company)    
(require 'company-go) 
(require 'gotest)

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-minimum-prefix-length 0)               ; autocomplete right after '.'
(setq company-idle-delay .3)                         ; shorter delay before autocompletion popup
(setq company-echo-delay 0)                          ; removes annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

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
