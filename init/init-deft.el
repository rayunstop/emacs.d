(require-package 'deft)

(if (not (boundp 'note-path)) (setq note-path "~/"))
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-directory (concat note-path "Notes"))

(defun gtd ()
  (interactive)
  (helm-browse-project-find-files (concat note-path "GTD")))

(provide 'init-deft)
