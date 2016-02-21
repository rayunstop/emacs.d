(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(prefer-coding-system 'utf-8-unix)
(define-coding-system-alias 'UTF-8 'utf-8)

(setq tab-width 4)

(setq-default indent-tabs-mode nil)

(delete-selection-mode +1)

(global-auto-revert-mode +1)

(global-hl-line-mode +1)

(setq blink-matching-paren nil)

(show-paren-mode +1)

(global-subword-mode +1)

(normal-erase-is-backspace-mode +1)

(prefer-coding-system 'utf-8-unix)

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

(global-set-key (kbd "C-j") 'default-indent-new-line)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-x ?") 'help-command)


(setq frame-title-format
      '("" invocation-name ": "(:eval (if (buffer-file-name)
                                          (abbreviate-file-name (buffer-file-name))
                                        "%b"))))

(defun dos2unix ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (search-forward (string ?\C-m)  nil t)
      (replace-match "" nil t))))

(global-set-key (kbd "M-n") 'scroll-up-line)
(global-set-key (kbd "M-p") 'scroll-down-line)

(provide 'init-edit)
