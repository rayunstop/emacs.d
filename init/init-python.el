(require-package 'jedi)
(require-package 'anaconda-mode)

(add-to-list 'company-backends 'company-jedi)

(defun init-python-mode()
  "init python mode"
  (anaconda-mode t)
  (eldoc-mode t)
  (setq-local electric-layout-rules
              '((?: . (lambda ()
                        (and (zerop (first (syntax-ppss)))
                             (python-info-statement-starts-block-p)
                             'after)))))

  (when (executable-find "ipython")
    (setq python-shell-interpreter "ipython")

  (py-autopep8-enable-on-save)))



(add-hook 'python-mode-hook 'init-python-mode nil t)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-python)
