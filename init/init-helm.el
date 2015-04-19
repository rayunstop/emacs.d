(require-package 'helm)

(require 'helm-config)
(helm-mode t)

(helm-autoresize-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(setq-default helm-display-header-line nil
              helm-autoresize-min-height 10
              helm-autoresize-max-height 35
              helm-split-window-in-side-p t

              helm-M-x-fuzzy-match t
              helm-buffers-fuzzy-matching t
              helm-recentf-fuzzy-match t
              helm-apropos-fuzzy-match t)

(global-set-key (kbd "C-x g") 'helm-do-grep)

(provide 'init-helm)
