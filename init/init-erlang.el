(ignore-errors
  (require-package 'erlang))

(when (package-installed-p 'erlang)
  (setq erlang-root-dir "/usr/local/opt/erlang/lib/erlang")
  (setq exec-path (cons "/usr/local/bin" exec-path))
  (setq erlang-electric-commands '(erlang-electric-comma,
                                   erlang-electric-semicolon))
  (require 'erlang-start))

(provide 'init-erlang)
