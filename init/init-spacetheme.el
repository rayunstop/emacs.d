(require-package 'spaceline)
(require 'spaceline-config)


(setq powerline-default-separator 'slant)

(setq ns-use-srgb-colorspace nil)

(load-theme 'spacemacs-light t)

(spaceline-spacemacs-theme)

(spaceline-helm-mode t)
(spaceline-info-mode)

; (require-package 'micgoline)
; (micgoline-load-theme)

(provide 'init-spacetheme)
