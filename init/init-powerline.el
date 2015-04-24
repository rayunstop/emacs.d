(require-package 'powerline)

(setq ns-use-srgb-colorspace nil)

(defface pl-active0
  '((t (:background "#FF8F00" :foreground "#FFFFFF" :inherit mode-line)))
  "P face 0."
  :group 'powerline)

(defface pl-inactive0
  '((t (:background "#FFC107" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face 0."
  :group 'powerline)

(defface pl-active1
  '((t (:background "#FFC107" :foreground "#FFFFFF" :inherit mode-line)))
  "P face 1."
  :group 'powerline)

(defface pl-inactive1
  '((t (:background "#FFD54F" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face 1."
  :group 'powerline)

(defface pl-active2
  '((t (:background "#2196F3" :foreground "#FFFFFF" :inherit mode-line)))
  "P face 1."
  :group 'powerline)

(defface pl-inactive2
  '((t (:background "#64B5F6" :foreground "#FFFFFF" :inherit mode-line-inactive)))
  "P face 1."
  :group 'powerline)

(defun load-powerline-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default
   mode-line-format
   '("%e"
     (:eval
      (let* ((active (powerline-selected-window-active))
             (mode-line (if active 'mode-line 'mode-line-inactive))
             (face0 (if active 'pl-active0 'pl-inactive0))
             (face1 (if active 'pl-active1 'pl-inactive1))
             (face2 (if active 'pl-active2 'pl-inactive2))
             (separator-left (intern (format "powerline-%s-%s"
                                             (powerline-current-separator)
                                             (car powerline-default-separator-dir))))
             (separator-right (intern (format "powerline-%s-%s"
                                              (powerline-current-separator)
                                              (cdr powerline-default-separator-dir))))
             (lhs (list (powerline-raw "%*" face2 'l)
                        (powerline-raw "%4l" face2 'l)
                        (powerline-raw ":" face2 'l)
                        (powerline-raw "%3c" face2 'r)

                        (when powerline-display-buffer-size
                          (powerline-buffer-size face2 'l))

                        (when powerline-display-mule-info
                          (powerline-raw mode-line-mule-info face2 'l))

                        (funcall separator-left face2 nil)

                        (powerline-buffer-id nil 'l)
                        (when (and (boundp 'which-func-mode) which-func-mode)
                          (powerline-raw which-func-format nil 'l))
                        (powerline-raw " ")

                        (funcall separator-right nil face0)

                        (when (boundp 'erc-modified-channels-object)
                          (powerline-raw erc-modified-channels-object nil 'l))

                        (powerline-major-mode face0 'l)
                        (powerline-process face0)
                        (powerline-raw " " face0)
                        (funcall separator-left face0 face1)
                        (powerline-minor-modes face1 'l)
                        (powerline-narrow face1 'l)
                        (powerline-raw " " face1)
                        (funcall separator-right face1 nil)
                        (powerline-vc nil 'r)
                        (when (bound-and-true-p nyan-mode)
                          (powerline-raw (list (nyan-create)) nil 'l))))
             (rhs (list (powerline-raw global-mode-string nil 'r)
                        (funcall separator-right nil face1)
                        (unless window-system
                          (powerline-raw (char-to-string #xe0a1) face1 'l))
                        (powerline-raw " " face1)
                        (powerline-raw "%6p" face1 'r)
                        (when powerline-display-hud
                          (powerline-hud mode-line face0)))))
        (concat (powerline-render lhs)
                (powerline-fill mode-line (powerline-width rhs))
                (powerline-render rhs)))))))

(load-powerline-theme)

(provide 'init-powerline)
