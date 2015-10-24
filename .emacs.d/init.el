;;;
;;; Emacs specific stuff
;;;

;;; no annoying-ass shit
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;;; no annoying pussy-ass shit
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;;; get it looking classy
(add-to-list 'default-frame-alist '(height . 56))
(add-to-list 'default-frame-alist '(width . 80))

;;; add directory to search for themes
(add-to-list 'custom-theme-load-path "~/config/.emacs.d/themes/")

;;; load zenburn theme
(load-theme 'zenburn t)

;;;
;;; ESS stuff
;;;

;;; have pdf maker for ess tex stuff be pdflatex instead of texi2pdf
(add-to-list 'load-path "~/config/.emacs.d/ESS/lisp/")
(load "ess-site")
(setq ess-swv-pdflatex-commands '("pdflatex" "texi2pdf" "make"))

;;;
;;; Python stuff
;;;

;;; have python indent with 4 spaces if it don't already
(setq python-indent 4)

;;; package for elpy
(require 'package)
(add-to-list 'package-archives
	     '("elpy" . "http://jorgenschaefer.github.io/packages/"))

;;; for melpa package manager
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(elpy-enable)

;;;
;;; C/C++/Java
;;;

;;; indentation
(setq c-default-style "k&r" c-basic-offset 4)

;;; use irony-mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;;;
;;; Homebrew told me to do this
;;;
(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

