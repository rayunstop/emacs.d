(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-up 1)))

(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-down 1)))

(defun init-key-binding ()
  (global-set-key (kbd "M-n") 'hold-line-scroll-up)
  (global-set-key (kbd "M-p") 'hold-line-scroll-down))


(init-key-binding)

(provide 'init-holdline-scroll)
