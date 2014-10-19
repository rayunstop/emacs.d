(require-package 'window-numbering)
(require 'window-numbering)

(window-numbering-mode 1)

(global-set-key (kbd "M-k") 'kill-buffer-and-window)

(provide 'init-window-manager)
