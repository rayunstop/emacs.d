(require-package 'multi-web-mode)

(setq mweb-default-major-mode 'html-mode)
(add-hook 'html-mode
          (lambda ()
            (enable-whitespace)))

(setq mweb-tags
      '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
        (js2-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
        (coffee-mode "<script +\\(type=\"text/coffeescript\"\\|language=\"coffeescript\"\\)[^>]*>" "</script>")
        (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))

(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

(require-package 'sass-mode)

(provide 'init-web)
