(require-package 'rainbow-mode)
(require-package 'rainbow-delimiters)

(require 'rainbow-mode)
(require 'rainbow-delimiters)

(rainbow-mode t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'init-rainbow)
