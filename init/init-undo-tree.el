(require-package 'undo-tree)

(global-undo-tree-mode)

(eval-after-load "undo-tree" '(diminish 'undo-tree-mode "Ⓤ"))

(provide 'init-undo-tree)
