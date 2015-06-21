(require-package 'erlang)
(require-package 'edts)


(defun erlang-after-init-hook ()
  (setq flycheck-erlang-include-path (list "../include/"))
  (setq erlang-root-dir "/usr/local/opt/erlang/lib/erlang")
  (setq exec-path (cons "/usr/local/bin" exec-path))
  (setq erlang-electric-commands '(erlang-electric-comma,
                                   erlang-electric-semicolon))
  (require 'erlang-start)
  (require 'edts-start))

(add-hook 'after-init-hook 'erlang-after-init-hook)

(provide 'init-erlang)
