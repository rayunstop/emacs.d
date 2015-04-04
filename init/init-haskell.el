(add-hook 'haskell-mode-hook 'turn-on-hi2)

(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)
     (custom-set-variables '(haskell-stylish-on-save t))))

(provide 'init-haskell)
