(require-package 'coffee-mode)

(add-hook 'coffee-mode-hook
          (lambda ()
            (enable-whitespace)
            (custom-set-variables '(coffee-tab-width 4))
            (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
            (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)
            (add-hook 'after-save-hook 'coffee-compile-file nil t)))

(provide 'init-coffee)
