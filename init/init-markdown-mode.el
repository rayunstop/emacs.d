(require-package 'markdown-mode)
(require 'markdown-mode)

(defun markdown-custom ()
  "markdown-mode-hook"
  (define-key markdown-mode-map (kbd "M-n") 'hold-line-scroll-up)
  (define-key markdown-mode-map (kbd "M-p") 'hold-line-scroll-down))

(add-hook 'markdown-mode-hook 'markdown-custom)

(provide 'init-markdown-mode)
