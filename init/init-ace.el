(require-package 'ace-isearch)

(global-ace-isearch-mode +1)

(custom-set-variables
 '(ace-isearch-input-length 7)
 '(ace-isearch-input-idle-delay 0.3)
 '(ace-isearch-submode 'ace-jump-char-mode)
 '(ace-isearch-use-ace-jump 'printing-char))

(ace-isearch-set-ace-jump-after-isearch-exit t)

(require-package 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-background t)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(provide 'init-ace)
