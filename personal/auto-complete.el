(require 'auto-complete-config)
(defcustom ac-modes
  '(emacs-lisp-mode
    lisp-mode
    lisp-interaction-mode
    slime-repl-mode
    c-mode
    cc-mode
    c++-mode
    java-mode
    malabar-mode
    clojure-mode
    clojurescript-mode
    scala-mode
    scheme-mode
    erlang-mode
    ocaml-mode
    tuareg-mode
    coq-mode
    haskell-mode
    agda-mode
    agda2-mode
    perl-mode
    cperl-mode
    python-mode
    ruby-mode
    lua-mode
    ecmascript-mode
    javascript-mode
    js-mode
    js2-mode
    php-mode
    css-mode
    makefile-mode
    sh-mode
    fortran-mode
    f90-mode
    ada-mode
    xml-mode
    sgml-mode
    go-mode
    ts-mode)
  "Major modes `auto-complete-mode' can run on."
  :type '(repeat symbol)
  :group 'auto-complete)

(ac-config-default)

(require 'go-autocomplete)

(provide 'auto-complete)
;;; auto-complete.el ends here
