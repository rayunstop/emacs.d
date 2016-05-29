;; ignore bell
(setq ring-bell-function 'ignore)

;; close autosave
(setq auto-save-default nil)

;; close emacs auto backup files
(setq make-backup-files nil)

;; matching parenthese
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-defaults)
