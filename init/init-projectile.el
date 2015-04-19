(require-package 'projectile)
(require-package 'helm-projectile)

(projectile-global-mode)
(helm-projectile-on)

(eval-after-load "projectile" '(diminish 'projectile-mode "Ⓟ"))

(provide 'init-projectile)
