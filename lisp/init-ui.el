;; close tool 
(tool-bar-mode -1)

;; close scroll bar
(scroll-bar-mode -1)

;; show line number
(global-linum-mode 1)

;; change default cursor type
(setq-default cursor-type 'bar)

;; close the help screen
(setq inhibit-splash-screen 1)

;; change font size to 13pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 130)

;; open fullscreen on start emacs
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; highlight
(global-hl-line-mode 1)

(provide 'init-ui)
