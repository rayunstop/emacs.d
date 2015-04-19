(require-package 'deft)

(if (not (boundp 'note-directory)) (setq note-directory "~/Notes"))
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-directory note-directory)

(if (not (boundp 'gtd-directory)) (setq gtd-directory "~/GTD"))
(defun gtd ()
  (interactive)
  (find-file (concat gtd-directory "/*.org") t))


(if (not (boundp 'note-file)) (setq note-file "~/note.org"))
(defun note ()
  (interactive)
  (find-file note-file))

(global-set-key (kbd "C-x M-g") 'gtd)
(global-set-key (kbd "C-x M-n") 'note)

(provide 'init-deft)
