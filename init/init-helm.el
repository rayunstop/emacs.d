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

(eval-after-load 'helm-grep
  '(setq helm-grep-default-command helm-grep-default-recurse-command))

(global-set-key (kbd "C-x g") 'helm-do-grep)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

(provide 'init-helm)
