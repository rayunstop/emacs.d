(require-package 'smartparens)

(require 'smartparens-config)  ;; load default config

(smartparens-global-mode 1)
(sp-use-paredit-bindings)

(provide 'init-smartparens)
