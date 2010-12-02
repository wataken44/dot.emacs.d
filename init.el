
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

; font-lock-mode
(global-font-lock-mode t)

; short cut
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cr" 'replace-string)
(global-set-key "\C-cR" 'query-replace)
(global-set-key "\C-c\M-r" 'replace-regexp)
(global-set-key "\C-ci" 'indent-region)

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

; do not show startup message
(setq inhibit-startup-message t)

; ansi color on shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; do not show tool-bar
(tool-bar-mode 0)

; load init file for each environment
(load "init-system-dependent")

; autoinsert init
(load "init-autoinsert")

; yasnippet init
(load "init-yasnippet")