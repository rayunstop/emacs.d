(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(prefer-coding-system 'utf-8-unix)

(setq default-tab-width 4)

(setq-default indent-tabs-mode nil)

(delete-selection-mode +1)

(global-auto-revert-mode +1)

(global-hl-line-mode +1)

(show-paren-mode +1)

(provide 'init-edit)
