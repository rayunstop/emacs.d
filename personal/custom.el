(setq default-frame-alist '((top . 0) (left . 0) (height . 56) (width . 200)))

(setq-default cursor-type 'bar)

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
    ts-mode)
  "Major modes `auto-complete-mode' can run on."
  :type '(repeat symbol)
  :group 'auto-complete)

(ac-config-default)

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

(global-set-key (kbd "M-n") 'hold-line-scroll-up)
(global-set-key (kbd "M-p") 'hold-line-scroll-down)
