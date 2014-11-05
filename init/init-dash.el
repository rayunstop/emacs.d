(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(global-set-key (kbd "C-c C-d") 'dash-at-point)

(require-package 'dash-at-point)
(require-package 'helm)
(require-package 'helm-dash)

(setq helm-dash-browser-func 'eww)

(provide 'init-dash)
