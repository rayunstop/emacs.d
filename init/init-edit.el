(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(prefer-coding-system 'utf-8-unix)

(setq default-tab-width 4)

(setq-default indent-tabs-mode nil)

(delete-selection-mode t)

(global-auto-revert-mode t)

(global-hl-line-mode t)

(provide 'init-edit)
