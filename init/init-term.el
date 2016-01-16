(require-package 'sane-term)

(require 'sane-term)
(global-set-key (kbd "C-x t") 'sane-term)
(global-set-key (kbd "M-<right>") 'sane-term-next)
(global-set-key (kbd "C-x T") 'sane-term-create)

(provide 'init-term)
