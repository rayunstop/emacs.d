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

(provide 'org-mode)
;;; org-mode.el ends here
