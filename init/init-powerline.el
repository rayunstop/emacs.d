(require-package 'powerline)

(setq ns-use-srgb-colorspace nil)


(defface pl-active-blue
  '((t (:background "#4885ed" :foreground "#FFFFFF" :inherit mode-line)))
  "P face blue."
  :group 'powerline)

(defface pl-inactive-blue
  '((t (:background "#00A1F1" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face blue."
  :group 'powerline)

(defface pl-active-green
  '((t (:background "#3cba54" :foreground "#FFFFFF" :inherit mode-line)))
  "P face green."
  :group 'powerline)

(defface pl-inactive-green
  '((t (:background "#7CBB00" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face green."
  :group 'powerline)

(defface pl-active-red
  '((t (:background "#db3236" :foreground "#FFFFFF" :inherit mode-line)))
  "P face red."
  :group 'powerline)

(defface pl-inactive-red
  '((t (:background "#F65314" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face red."
  :group 'powerline)

(defface pl-active-yellow
  '((t (:background "#f4c20d" :foreground "#FFFFFF" :inherit mode-line)))
  "P face yellow."
  :group 'powerline)

(defface pl-inactive-yellow
  '((t (:background "#FFBB00" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face yellow."
  :group 'powerline)


(setq powerline-default-separator 'slant)


(defun load-powerline-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default
   mode-line-format
   '("%e"
     (:eval
      (let* ((active (powerline-selected-window-active))
             (mode-line (if active 'mode-line 'mode-line-inactive))
             (blue (if active 'pl-active-blue 'pl-inactive-blue))
             (green (if active 'pl-active-green 'pl-inactive-green))
             (red (if active 'pl-active-red 'pl-inactive-red))
             (yellow (if active 'pl-active-yellow 'pl-inactive-yellow))
             (separator-right (intern (format "powerline-%s-%s"
                                             (powerline-current-separator)
                                             (car powerline-default-separator-dir))))
             (separator-left (intern (format "powerline-%s-%s"
                                              (powerline-current-separator)
                                              (cdr powerline-default-separator-dir))))
             (lhs (list (powerline-raw "%*" blue 'l)
                        (powerline-raw "%4l" blue 'l)
                        (powerline-raw ":" blue 'l)
                        (powerline-raw "%3c" blue 'r)

                        (when powerline-display-buffer-size
                          (powerline-buffer-size blue 'l))

                        (when powerline-display-mule-info
                          (powerline-raw mode-line-mule-info blue 'l))

                        (funcall separator-left blue red)

                        (set-face-attribute 'mode-line-buffer-id nil :foreground "#FFFFFF")
                        (powerline-buffer-id red 'l)

                        (when (and (boundp 'which-func-mode) which-func-mode)
                          (powerline-raw which-func-format red 'l))
                        (powerline-raw " " red)

                        (funcall separator-right red yellow)

                        (when (boundp 'erc-modified-channels-object)
                          (powerline-raw erc-modified-channels-object nil 'l))

                        (powerline-major-mode yellow 'l)
                        (powerline-process yellow)
                        (powerline-raw " " yellow)
                        (funcall separator-left yellow blue)
                        (powerline-minor-modes blue 'l)
                        (powerline-narrow blue 'l)
                        (powerline-raw " " blue)
                        (funcall separator-right blue green)
                        (powerline-vc green 'l)))

             (rhs (list (powerline-raw global-mode-string green 'r)
                        (funcall separator-right green red)
                        (unless window-system
                          (powerline-raw (char-to-string #xe0a1) red 'l))
                        (powerline-raw " " red)
                        (powerline-raw "%6p" red 'r)
                        (when powerline-display-hud
                          (powerline-hud mode-line blue)))))
        (concat (powerline-render lhs)
                (powerline-fill green (powerline-width rhs))
                (powerline-render rhs)))))))

(load-powerline-theme)

(provide 'init-powerline)
