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

(defun t-move-beginning-of-line (arg)
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(global-set-key [remap move-beginning-of-line]
                't-move-beginning-of-line)


(provide 'init-edit)
