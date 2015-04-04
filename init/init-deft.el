(require-package 'deft)
(require 'deft)

(setq icloud-path "~/Library/Mobile Documents/com~apple~CloudDocs/")
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-directory (concat icloud-path "Notes"))

(defun gtd ()
  (interactive)
  (find-file (concat icloud-path "GTD")))

(provide 'init-deft)
