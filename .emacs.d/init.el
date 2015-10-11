;;;
;;; Emacs specific stuff
;;;

;;; no annoying-ass shit
(setq inhibit-splash-screen t)

;;; no annoying pussy-ass shit
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;;; get it looking classy
(add-to-list 'default-frame-alist '(fullscreen . fullheight))

;;; add directory to search for themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;; load zenburn theme
(custom-set-variables
 '(custom-safe-themes
   (quote
    ("f1ee3126c1aba9f3ba35bb6f17cb2190557f2223646fd6796a1eb30a9d93e850" default))))
(custom-set-faces)
(load-theme 'zenburn)

;;;
;;; ESS stuff
;;;

;;; have pdf maker for ess tex stuff be pdflatex instead of texi2pdf
(setq ess-swv-pdflatex-commands '("pdflatex" "texi2pdf" "make"))

;;;
;;; Python stuff
;;;

;;; have python indent with 4 spaces if it don't already
(setq python-indent 4)

