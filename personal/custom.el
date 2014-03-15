;;; Code:

;; (require 'helm)
;; (define-key helm-map [(tab)] 'helm-execute-persistent-action)
;; (helm-mode 1)

(global-set-key (kbd "C-c C-r") 'rgrep)

(require 'key-chord)
(key-chord-define-global "UU" 'undo-tree-visualize)
(key-chord-mode +1)

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(edit-server-start)

(normal-erase-is-backspace-mode 1)

(setq-default indent-tabs-mode nil)

(add-to-list 'auto-mode-alist '("\\.stp\\'" . systemtap-mode))

(provide 'custom)
