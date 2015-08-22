(require-package 'erlang)
(require-package 'edts)


(defun erlang-after-load-hook ()
  (interactive)
  (setq flycheck-erlang-include-path (list "../include/" "./test/"))
  (setq flycheck-erlang-lib-path (list "../deps/ranch/ebin" "./ebin"))
  (setq erlang-root-dir "/usr/local/opt/erlang/lib/erlang")
  (setq exec-path (cons "/usr/local/bin" exec-path))
  (setq erlang-electric-commands '(erlang-electric-comma,
                                   erlang-electric-semicolon))
  (cscope-minor-mode)
  (whitespace-mode t)
  (require 'erlang-start)
  ;; (require 'edts-start)
  )

(add-hook 'erlang-mode-hook 'erlang-after-load-hook)

(provide 'init-erlang)
