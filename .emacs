;============================ chinese font start ======================
 (set-language-environment 'Chinese-GB)
 (set-keyboard-coding-system 'utf-8)
 (set-clipboard-coding-system 'utf-8)
 (set-terminal-coding-system 'utf-8)
 (set-buffer-file-coding-system 'utf-8)
 (set-default-coding-systems 'utf-8)
 (set-selection-coding-system 'utf-8)
 (modify-coding-system-alist 'process "*" 'utf-8)
 (setq default-process-coding-system '(utf-8 . utf-8))
 (setq-default pathname-coding-system 'utf-8)
 (set-file-name-coding-system 'utf-8)
 (setq ansi-color-for-comint-mode t) 
;=========================== font set end===============================
;;=======some common set start=========
(set-scroll-bar-mode nil)
;;scroll bar enable
(tool-bar-mode nil)
;;tool bar off
;;set default directory
(setq default-directory "~/works/")
;;visible bell enable
(setq visible-bell t)
;;close the startup screen
(setq inhibit-startup-message t)
;;change yes to y
(fset 'yes-or-no-p 'y-or-n-p)
;;sth about highlight
(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;;disable the left click paste
(setq mouse-yank-at-point t)
;;line number
(setq column-number-mode t)
(setq line-number-mode t)
;;set kill ring
(setq kill-ring-max 200)
;;auto fill;;;I don't know
(setq-default auto-fill-function 'do-auto-fill)
;;Autofill in all modes;;
(setq default-fill-column 120)
;;ban tab
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq tab-stop-list ())
;; as it says
(setq enable-recursive-minibuffers t)
;;as it says
(setq scroll-margin 3 scroll-conservatively 10000)
;;default mode---text+auto fill
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;about paren...hiahia
(setq show-paren-mode t) 
(setq show-paren-style 'parenthesis)
;;mouse go away...e
(setq mouse-avoidance-mode 'animate)
;;as it says
(setq auto-save-mode nil)
;;======set end======================

;;====time set start=======
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)
;;====time end=========

;;load path here=============
(setq load-path (cons "~/site-lisp/python-mode.el-6.0.2/" load-path))
;;===========================
;;python-mode here===========
(setq auto-mode-alist
(cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
(cons '("python" . python-mode)
interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
;;; add these lines if you like color-based syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'euc-cn)
(set-terminal-coding-system 'euc-cn)
(set-buffer-file-coding-system 'euc-cn)
(set-selection-coding-system 'euc-cn)
(modify-coding-system-alist 'process "*" 'euc-cn)
(setq default-process-coding-system
'(euc-cn . euc-cn))
(setq-default pathname-coding-system 'euc-cn)
;;==========================