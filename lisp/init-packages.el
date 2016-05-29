(when (>= emacs-major-version 24)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar ray/packages '(
	       ;; --- Auto-completion ---
	       company
	       ;; --- Better Editor ---
	       hungry-delete
	       swiper
	       counsel
	       smartparens
	       ;; --- Major Mode ---
	       js2-mode
	       ;; --- Minor Mode ---
	       nodejs-repl
	       exec-path-from-shell
	       ;; --- Themes ---
	       monokai-theme
	       ;; solarized-theme
	       popwin
	       ) "Default packages")

(setq package-selected-packages ray/packages)

(defun ray/packages-installed-p ()
    (loop for pkg in ray/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (ray/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg ray/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
 (exec-path-from-shell-initialize))

;; hungry delete packages
(global-hungry-delete-mode)

;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; popwin
(require 'popwin)
(popwin-mode t)

;; load default theme
(load-theme 'monokai 1)

;; global-complete open
(global-company-mode 1)

(provide 'init-packages)
