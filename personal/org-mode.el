(add-hook 'org-mode-hook
          (lambda ()
            (defvar-local image-file "")
            (defun org-insert-clipboard-image ()
              (interactive)
              (setq image-file (read-from-minibuffer "image:"))
              (call-process "pngpaste" nil nil nil image-file)
              (org-insert-link nil (concat "file:" image-file) "")
              (org-display-inline-images))
            (global-set-key (kbd "C-c c i") 'org-insert-clipboard-image)))

(setq org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.9/libexec/ditaa0_9.jar")
(org-babel-do-load-languages 'org-babel-load-languages '((ditaa . t)))
(org-babel-do-load-languages 'org-babel-load-languages '((dot . t)))
(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)
(setq org-babel-results-keyword "results")
(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))


(defun org-babel-execute:scheme (body params)
  (defvar-local cmd "")
  (setq cmd (format "racket -e '%s'" body))
  (message cmd)
  (shell-command-to-string cmd)
  )



(provide 'org-mode)
;;; org-mode.el ends here
