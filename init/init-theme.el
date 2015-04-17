(require-package 'solarized-theme)

(setq solarized-use-variable-pitch nil)
(setq solarized-scale-org-headlines nil)

(setq solarized-height-minus-1 1)
(setq solarized-height-plus-1 1)
(setq solarized-height-plus-2 1)
(setq solarized-height-plus-3 1)
(setq solarized-height-plus-4 1)

(load-theme 'solarized-dark t)

(setq ns-use-srgb-colorspace nil)

(require-package 'powerline)
(powerline-default-theme)


(provide 'init-theme)
