(require-package 'whitespace)
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))
(defun enable-whitespace ()
  (add-hook 'before-save-hook 'whitespace-cleanup nil t)
  (whitespace-mode +1))

(add-hook 'prog-mode-hook #'enable-whitespace)

(provide 'init-whitespace)
