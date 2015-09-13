(when *is-a-mac*
  (require-package 'dash-at-point)

  (autoload 'dash-at-point "dash-at-point"
    "Search the word at point with Dash." t nil)

  (global-set-key (kbd "C-c C-d") 'dash-at-point)


  (require-package 'osx-dictionary)
  (global-set-key (kbd "C-c d") 'osx-dictionary-search-pointer))

(provide 'init-dash)
