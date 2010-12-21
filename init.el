
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

; add .emacs.d/auto-install to load-path
(setq load-path 
      (cons (expand-file-name "~/.emacs.d/auto-install/")
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
(require 'init-misc)

; system-dependent init
(require 'init-system-dependent)

; autoinsert init
(require 'init-autoinsert)

; yasnippet init
(require 'init-yasnippet)

; google-c-style init
(require 'init-google-c-style)

; org-mode init
(require 'init-org)

; auto-install init
(require 'init-auto-install)

; anything init
(require 'init-anything)

; auto-complete init
(require 'init-auto-complete-config)
