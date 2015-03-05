(defun init-python-mode()
  (setq jedi:complete-on-dot t)
  (jedi:setup))


(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-hook 'python-mode-hook 'init-python-mode)

(setq jedi:server-command '("~/.emacs.d/.python-environments/default/bin/jediepcserver"))

(provide 'init-python)
