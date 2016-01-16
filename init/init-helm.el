(require-package 'helm)
(require-package 'helm-ag)

(require 'helm-config)
(helm-mode t)

(setq helm-move-to-line-cycle-in-source nil)

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

(global-set-key (kbd "C-x g") 'helm-do-ag)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

(require-package 'swiper-helm)

(global-set-key (kbd "C-s") 'swiper-helm)
(global-set-key (kbd "C-r") 'swiper-helm)


(provide 'init-helm)
