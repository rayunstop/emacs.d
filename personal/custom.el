(setq-default cursor-type 'bar)

(setq default-tab-width 4)

(setq-default indent-tabs-mode nil)

(autoload 'auto-complete "auto-complete.el")

(add-to-list 'auto-mode-alist '("\\.stp\\'" . systemtap-mode))
(autoload 'systemtap-mode "systemtap-mode.el")

(autoload 'hold-line-scroll "hold-line-scroll.el")

(autoload 'theme "theme.el")
