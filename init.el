
; add .emacs.d/site-lisp subdirs to load-path
(progn (cd "~/.emacs.d/site-lisp")
       (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	   (normal-top-level-add-subdirs-to-load-path)))
;
(progn (cd "~"))

; add .emacs.d/preference to load-path
(setq load-path 
      (cons (expand-file-name "~/.emacs.d/preference/")
	    load-path))

; add-hook for each mode
(add-hook 'python-mode-hook
	  '(lambda ()
	     (setq py-indent-offset 4)
	     (setq tab-width py-indent-offset)
	     (setq indent-tabs-mode nil)
	     ))

(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode t)
	     (setq ruby-indent-level 4)
	     ))

(add-hook 'js-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (setq js-indent-level 2)
	     ))

(add-hook 'html-mode-hook
	  '(lambda ()
	     (setq sgml-basic-offset 2)
	     (setq indent-tabs-mode nil)))

; miscellanous init
(load "init-misc")

; system-dependent init
(load "init-system-dependent")

; autoinsert init
(load "init-autoinsert")

; yasnippet init
(load "init-yasnippet")

; google-c-style init
(load "init-google-c-style")
