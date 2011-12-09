;============================ chinese font start ======================
; (set-language-environment ')
; (set-keyboard-coding-system 'utf-8)
; (set-clipboard-coding-system 'utf-8)
; (set-terminal-coding-system 'utf-8)
; (set-buffer-file-coding-system 'utf-8)
; (set-default-coding-systems 'utf-8)
; (set-selection-coding-system 'utf-8)
; (modify-coding-system-alist 'process "*" 'utf-8)
; (setq default-process-coding-system '(utf-8 . utf-8))
; (setq-default pathname-coding-system 'utf-8)
; (set-file-name-coding-system 'utf-8)
; (setq ansi-color-for-comint-mode t) 
;=========================== font set end===============================
;;=======some personal set start=========
;;title
(setq frame-title-format
      (concat invocation-name "-" emacs-version
              " By " "Frellica"
              " [%b (%f)]"))

(set-scroll-bar-mode nil)
;;scroll bar enable
(tool-bar-mode nil)
;;tool bar off
;;set default directory
(setq default-directory "~/works/")
;;menubar off
(menu-bar-mode nil)
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
(put 'narrow-to-page 'disabled nil)
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
(show-paren-mode t)
(set-face-background 'show-paren-match-face "#555555")
(set-face-attribute 'show-paren-match-face nil
            :weight 'bold :underline nil :overline nil :slant 'normal)
(set-face-foreground 'show-paren-mismatch-face "red")
(set-face-attribute 'show-paren-mismatch-face nil
                    :weight 'bold :underline t :overline nil :slant 'normal)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
;;mouse go away...e
(setq mouse-avoidance-mode 'animate)
;;as it says
(setq auto-save-mode nil)
;;highlight the block waited copyed
(transient-mark-mode t)
;;battery mode
(display-battery-mode 1)
;;eol
(setq track-eol t)
;(global-set-key [home] 'beginning-of-buffer)
;(global-set-key [end] 'end-of-buffer)
;;line number
(global-linum-mode t)
;;======set end======================

;;====time set start=======
(setq display-time-day-and-date t)
(setq display-time-format "%m月%d日%H:%M")
(setq display-time-24hr-format t)
(display-time)
;;====time end=========

;;load path here=============
;(setq load-path (cons "~/site-lisp/python-mode.el-6.0.2/" load-path))
(setq load-path (append load-path '("~/.emacs.d/el-get/el-get/")))
(setq load-path (append load-path '("~/.emacs.d/el-get/auto-complete")))
(require 'el-get)
(require 'auto-complete)
;;===========================
;;python-mode here===========
;(setq auto-mode-alist
;(cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist
;(cons '("python" . python-mode)
;interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)
;; add these lines if you like color-based syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(setq-default auto-complete-mode t)
;;==========================
