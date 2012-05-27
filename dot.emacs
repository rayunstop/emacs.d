;------------------------------------------
;
;emacs的用户自定义配置
;
;------------------------------------------
;去除启动时弹出的窗口
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)




;------------------------------------------
;
;启动最大化
;
;------------------------------------------
(setq default-frame-alist 
'(
  (top . 0)
  (left . 0)
  (height . 47)
  (width . 175)
))
 
;------------------------------------------
;
;设置字体
;
;------------------------------------------
(set-default-font "DejaVu Sans Mono-14")
(set-fontset-font (frame-parameter nil 'font)
       'han '("华文黑体" . "unicode-bmp"))
(set-fontset-font (frame-parameter nil 'font)
       'cjk-misc '("华文黑体" . "unicode-bmp"))
(set-fontset-font (frame-parameter nil 'font)
       'kana '("华文黑体" . "unicode-bmp"))
(set-fontset-font (frame-parameter nil 'font)
       'symbol '("华文黑体" . "unicode-bmp"))


;------------------------------------------
;
;关掉提示音
;------------------------------------------
(setq ring-bell-function 'ignore)


;------------------------------------------
;
;配对括号
;
;------------------------------------------
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;------------------------------------------
;
;编码设置
;
;------------------------------------------
(set-language-environment 'UTF-8)


;------------------------------------------
;
;关闭工具栏
;
;------------------------------------------
(tool-bar-mode -1)



;------------------------------------------
;
;一行一行的滚动
;
;------------------------------------------
(setq scroll-step 1)


;------------------------------------------
;
;输入的tab用4个空格去代替
;
;------------------------------------------
(setq tab-width 4 indent-tabs-mode t)
(setq-default indent-tabs-mode t)
(setq-default show-paren-mode t)
(setq indent-line-function 'indent-relative-maybe)


;------------------------------------------
;
;设置title
;
;------------------------------------------
(setq frame-title-format '("" buffer-file-name))

;------------------------------------------
;
;打开图片显示
;
;------------------------------------------
(auto-image-file-mode t)

;------------------------------------------
;
;支持外部剪贴板
;
;------------------------------------------
(setq x-select-enable-clipboard t)

;------------------------------------------
;
;设置成窄光标并且不让它闪
;
;------------------------------------------
(setq-default cursor-type 'bar)


;------------------------------------------
;
;显示行列号
;
;------------------------------------------
(global-linum-mode t)
(column-number-mode t)


;------------------------------------------
;
;设置emacs主题
;
;------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugin/color-theme-el")
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue2)


;------------------------------------------
;
;设置auto-complete
;
;------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugin/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugin/auto-complete/ac-dict")
(ac-config-default)


;------------------------------------------
;
;c风格的一些基础设置
;
;------------------------------------------
(defun my-c-style-base-hook()
  (c-set-style "K&R")
  (setq c-basic-offset 4)
)


;------------------------------------------
;
;增加对c-mode的特殊支持
;
;------------------------------------------
(defun my-c-mode-common-hook()
  ;
  ;常规配置
  ;
  (my-c-style-base-hook)
  '((c-tab-always-indent        . t)
    (c-hanging-braces-alist     . ((substatement-open after)
				   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
				   (inher-intro)
				   (case-label after)
				   (label after)
				   (access-label after)))
    (c-cleanup-list             . (scope-operator
				   empty-defun-braces
				   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
				   (substatement-open . 0)
				   (case-label        . 0)
				   (block-open        . 0)
				   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t))

)
(add-hook 'c-mode-hook 'my-c-mode-common-hook)
;------------------------------------------
;
;增加对cc-mode的特殊支持
;
;------------------------------------------
(defun my-c++-mode-common-hook()
  ;
  ;常规配置
  ;
  (my-c-style-base-hook)
)
(add-hook 'c++-mode-hook 'my-c++-mode-common-hook)




;------------------------------------------
;
;配置markdown-mode
;
;------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugin/modes/")
(require 'lua-mode)
(require 'nginx-mode)

(add-to-list 'load-path "~/.emacs.d/plugin/modes/epresent")
(require 'epresent)

;------------------------------------------
;
;高亮当前行
;
;------------------------------------------
(global-hl-line-mode 1)
(or (facep 'my-hl-line-face) (make-face 'my-hl-line-face))
(setq hl-line-face 'my-hl-line-face)
(face-spec-set 'my-hl-line-face '((t (
                                      :background "DodgerBlue3"
                                                  ;;:bold
                                                  ;;:weight nil
                                                  :inverse-video nil
                                                  ))))
(defun wcy-color-theme-adjust-hl-mode-face()
  "interactive"
  (let* ((color (x-color-values (face-attribute 'default :background))))
    (if (null color)
        (error "not support.")
      (let ((my-color (mapcar
                       (lambda (x)
                         (let ((y (/ #XFFFF 4))
                               (delta #X18FF))
                           (cond
                            ((< x (* y 1))
                             (+ x delta))
                            ((< x (* y 2))
                             (+ x delta))
                            ((< x (* y 3))
                             (- x delta))
                            (t
                             (- x delta)))))
                       color)))
        (message "%S %S" color my-color)
        (set-face-attribute
         'my-hl-line-face nil
         :background
         (concat "#"
                 (mapconcat
                  (lambda (c) (format "%04X" c))
                  my-color
                  "")))))))
(wcy-color-theme-adjust-hl-mode-face)

;------------------------------------------
;
;设置滚屏并不滚动光标
;
;------------------------------------------
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-up 1)
    (line-move-to-column tmp)
    (forward-line 1)))

(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-down 1)
    (line-move-to-column tmp)
    (forward-line -1)))

(global-set-key (kbd "M-n") 'hold-line-scroll-up)
(global-set-key (kbd "M-p") 'hold-line-scroll-down)


;------------------------------------------
;
;光标随屏幕一起滚动
;
;------------------------------------------
(defun hold-line-and-page-scroll-up()
  (interactive)
  (scroll-up 1))
(defun hold-line-and-page-scroll-down()
  (interactive)
  (scroll-down 1))

(global-set-key (kbd "<M-up>") 'hold-line-and-page-scroll-up)
(global-set-key (kbd "<M-down>") 'hold-line-and-page-scroll-down)


;------------------------------------------
;
;设置etags的find，next，和back绑定快捷键
;
;------------------------------------------
(global-set-key (kbd "M-?") 'pop-tag-mark)


;------------------------------------------
;
;启用ibuffer
;
;------------------------------------------
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;------------------------------------------
;
;设置ido-mode
;
;------------------------------------------
(ido-mode t)


;------------------------------------------
;
;设置cscope
;
;------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugin/cscope/")
(require 'xcscope)


;------------------------------------------
;
;设置auctex
;
;------------------------------------------
(add-to-list 'load-path' "~/.emacs.d/plugin/auctex/")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(mapc (lambda (mode)
      (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))


(defun m-eshell-hook ()
 
; define control p, control n and the up/down arrow
  (define-key eshell-mode-map [(control p)] 'eshell-previous-matching-input-from-input)
  (define-key eshell-mode-map [(control n)] 'eshell-next-matching-input-from-input)
 
  (define-key eshell-mode-map [up] 'previous-line)
  (define-key eshell-mode-map [down] 'next-line)
)
 
(add-hook 'eshell-mode-hook 'm-eshell-hook)




(add-to-list 'load-path' "~/.emacs.d/plugin/modes/erlang-mode")
(require 'erlang)
(require 'erlang-start)

