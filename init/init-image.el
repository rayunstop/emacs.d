(add-hook 'after-revert-hook 'image-after-revert-hook nil t)

(defun image-after-revert-hook ()
  (clear-image-cache))

(auto-image-file-mode +1)

(provide 'init-image)
