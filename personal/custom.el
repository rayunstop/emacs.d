;;; Code:

;; (require 'helm)
;; (define-key helm-map [(tab)] 'helm-execute-persistent-action)
;; (helm-mode 1)

(global-set-key (kbd "C-c C-d C-s") 'dash-at-point)
(global-set-key (kbd "C-c C-r") 'rgrep)

(require 'key-chord)
(key-chord-define-global "UU" 'undo-tree-visualize)
(key-chord-mode +1)

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(edit-server-start)

(setq-default indent-tabs-mode nil)

(autoload 'auto-complete "auto-complete.el")

(add-to-list 'auto-mode-alist '("\\.stp\\'" . systemtap-mode))
(autoload 'systemtap-mode "systemtap-mode.el")

(autoload 'hold-line-scroll "hold-line-scroll.el")

(autoload 'multi-cursors "multi-cursors.el")

(autoload 'theme "theme.el")

(provide 'custom)
;;; custom.el ends here
