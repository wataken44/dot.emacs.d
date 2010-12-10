;; init-misc.el
;; miscellanous setting

; font-lock-mode
(global-font-lock-mode t)

; short cut
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cr" 'replace-string)
(global-set-key "\C-cR" 'query-replace)
(global-set-key "\C-c\M-r" 'replace-regexp)
(global-set-key "\C-ci" 'indent-region)
(global-set-key "\C-t" 'next-buffer)
(global-set-key "\C-T" 'previous-buffer) 

; do not show startup message
(setq inhibit-startup-message t)

; ansi color on shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; do not show tool-bar
(tool-bar-mode 0)

; do not show menu-bar
(menu-bar-mode 0)

; do not use tab by default
(setq-default indent-tabs-mode nil)

; use iswitchb
(iswitchb-mode 1)

(provide 'init-misc)