(require-package 'window-numbering)
(require-package 'windsize)

(require 'window-numbering)
(require 'windmove)
(require 'windsize)

(window-numbering-mode +1)
(windmove-default-keybindings) ; C-<left/right/up/down>
(windsize-default-keybindings) ; C-S-<left/right/up/down>

(global-set-key (kbd "M-k") 'kill-buffer-and-window)

(defun switch-to-last-buffer ()
  (interactive)
  (switch-to-buffer nil))
(global-set-key (kbd "C-x C-x") 'switch-to-last-buffer)

(provide 'init-window)
