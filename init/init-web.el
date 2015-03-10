(require-package 'multi-web-mode)

(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js2-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (coffee-mode "<script +\\(type=\"text/coffeescript\"\\|language=\"coffeescript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

(add-hook 'coffee-mode-hook
          (lambda ()
            (local-set-key (kbd "C-j") 'coffee-newline-and-indent)))


(require-package 'tss)
(require 'typescript)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;; Key binding
(setq tss-popup-help-key "C-c C-d")
(setq tss-jump-to-definition-key "C-c C-j")
(setq tss-implement-definition-key "C-c C-i")

;; Make config suit for you. About the config item, eval the following sexp.
;; (customize-group "tss")

;; Do setting recommemded configuration
(tss-config-default)

(provide 'init-web)
