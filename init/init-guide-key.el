(require-package 'guide-key)

(setq guide-key/guide-key-sequence t)
(setq guide-key/idle-delay 0.3)
(setq guide-key/popup-window-position `bottom)

(guide-key-mode 1) ; Enable guide-key-mode

(provide 'init-guide-key)
