(require-package 'company)

(setq company-tooltip-limit 20)
(setq company-minimum-prefix-length 0)
(setq company-idle-delay .3)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))

(setq company-tooltip-flip-when-above t)

(global-company-mode 1)

(provide 'init-company)
