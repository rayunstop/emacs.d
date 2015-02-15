(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-default-style "k&r" c-basic-offset 4)
            (c-set-offset 'substatement-open 0)))

(provide 'init-c)
