(require-package 'window-numbering)
(require-package 'windsize)
(require-package 'windmove)

(window-numbering-mode +1)

(windmove-default-keybindings) ; S-<left/right/up/down>
; (windsize-default-keybindings) ; C-S-<left/right/up/down>

(global-set-key (kbd "C-M-b")  'windsize-left)
(global-set-key (kbd "C-M-f") 'windsize-right)
(global-set-key (kbd "C-M-p")    'windsize-up)
(global-set-key (kbd "C-M-n")  'windsize-down)

(global-set-key (kbd "M-k") 'kill-buffer-and-window)

(defun switch-to-last-buffer ()
  (interactive)
  (switch-to-buffer nil))
(global-set-key (kbd "C-x C-x") 'switch-to-last-buffer)

(provide 'init-window)
