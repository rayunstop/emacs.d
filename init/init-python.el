(require-package 'jedi)
(require-package 'company-jedi)

(defun init-python-mode()
  "init python mode"
  (add-to-list 'company-backends 'company-jedi))


(add-hook 'python-mode-hook 'init-python-mode nil t)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-python)
