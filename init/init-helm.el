(require-package 'helm)
(require-package 'helm-ag)

(require 'helm-config)
(helm-mode t)

(setq helm-move-to-line-cycle-in-source nil)

(helm-autoresize-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(setq-default helm-display-header-line t
              helm-autoresize-min-height 20
              helm-autoresize-max-height 20
              helm-split-window-in-side-p t
              helm-M-x-fuzzy-match t
              helm-buffers-fuzzy-matching t
              helm-recentf-fuzzy-match t
              helm-apropos-fuzzy-match t)

(global-set-key (kbd "C-x g") 'helm-do-ag)

(require-package 'helm-cscope)


(add-hook 'c-mode-common-hook 'helm-cscope-mode)
(add-hook 'helm-cscope-mode-hook
          (lambda ()
            (local-set-key (kbd "M-.") 'helm-cscope-find-global-definition)
            (local-set-key (kbd "M-@") 'helm-cscope-find-calling-this-funtcion)
            (local-set-key (kbd "M-s") 'helm-cscope-find-this-symbol)
            (local-set-key (kbd "M-,") 'helm-cscope-pop-mark)))

(require-package 'helm-codesearch)
(define-key global-map (kbd "C-c h f") 'helm-codesearch-find-file)
(define-key global-map (kbd "C-c h t") 'helm-codesearch-find-pattern)
(define-key global-map (kbd "C-c h I") 'helm-codesearch-create-csearchindex)


(provide 'init-helm)
