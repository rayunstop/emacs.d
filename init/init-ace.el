(require-package 'ace-jump-mode)

(define-key global-map (kbd "M-g c") 'ace-jump-char-mode)
(define-key global-map (kbd "M-g w") 'ace-jump-word-mode)
(define-key global-map (kbd "M-g l") 'ace-jump-line-mode)

(require-package 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-background t)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(provide 'init-ace)
