(setq-default cursor-type 'bar)

(scroll-bar-mode -1)

(tool-bar-mode -1)

(menu-bar-mode -1)

(blink-cursor-mode -1)

(line-number-mode t)

(column-number-mode t)

(size-indication-mode t)

(fringe-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(provide 'init-gui)
