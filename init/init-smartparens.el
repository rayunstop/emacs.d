(require-package 'smartparens)

(require 'smartparens-config)  ;; load default config

(eval-after-load "smartparens" '(diminish 'smartparens-mode "ⓟ"))

(provide 'init-smartparens)
