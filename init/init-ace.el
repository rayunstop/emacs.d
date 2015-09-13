(require-package 'avy)

(define-key global-map (kbd "M-g c") 'avy-goto-char)
(define-key global-map (kbd "M-g w") 'avy-goto-word-or-subword-1)
(define-key global-map (kbd "M-g l") 'avy-goto-line)

(require-package 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-background t)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(provide 'init-ace)
