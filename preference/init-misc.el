;; init-misc.el
;; miscellanous setting

; font-lock-mode
(global-font-lock-mode t)

; define function
; compare buffer with buffer-name
; used in next-user-buffer
(defun buffer-name-less (left-buffer right-buffer)
  (string< (buffer-name left-buffer) (buffer-name right-buffer)))

;; exceptional buffer to be switched
(setq stub-special-buffer-alist '("*shell*" "*scratch*"))

; switch to next user's buffer
; name of user's buffer start with [^ *] 
(defun switch-to-user-buffer (switch-dir)
  ;; sort buffer-list
  (setq sorted-buffer-alist (sort (buffer-list) 'buffer-name-less))
  ;; get current buffer index in sorted buffer-list
  (setq buffer-list-length (length sorted-buffer-alist)) 
  (setq current-buffer-index 
        (- buffer-list-length
           (length (member (current-buffer) sorted-buffer-alist))))
  ;; search and jump to next user buffer
  ;; start from current-buffer-index + switch-dir and wrap around
  (dotimes (i buffer-list-length)
    (setq buffer-index
          (% (+ current-buffer-index
                buffer-list-length
                (* (+ 1 i) switch-dir)) 
             buffer-list-length))
    (setq dest-buffer (nth buffer-index sorted-buffer-alist))
    (setq dest-buffer-name (buffer-name dest-buffer))
    (if (or (string-match-p "^[^ *]" dest-buffer-name)
            (member dest-buffer-name stub-special-buffer-alist))
        (progn (switch-to-buffer dest-buffer)
               (return t))
      )
    )
  )

;; switch forward
(defun switch-to-user-buffer-next ()
  (interactive)
  (progn (switch-to-user-buffer 1)))

;; switch backward
(defun switch-to-user-buffer-previous ()
  (interactive)
  (progn (switch-to-user-buffer -1)))

;; pretty jump;
;; from http://d.hatena.ne.jp/h1mesuke/20070729/p1
(defun my-beginning-of-line ()
  "Move point to beginning of current line.
If point is already at the beginning of line, move point to the first
non-whitespace character on this line."
  (interactive)
  (if (bolp) (skip-syntax-forward "-")
    (beginning-of-line)))

(defun my-end-of-line ()
  "Move point to end of current line.
If point is already at the end of line, move point to the last
non-whitespace character on this line."
  (interactive)
  (if (eolp) (skip-syntax-backward "-")
    (end-of-line)))

; short cut
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cr" 'replace-string)
(global-set-key "\C-c\C-r" 'query-replace)
(global-set-key "\C-cR" 'replace-regexp)
(global-set-key (kbd "<C-tab>") 'switch-to-user-buffer-next)
(global-set-key (kbd "<C-S-tab>") 'switch-to-user-buffer-previous)
(global-set-key "\C-t" 'switch-to-user-buffer-next)
(global-set-key "\C-q" 'other-window)
(global-set-key "\C-a" 'my-beginning-of-line)
(global-set-key "\C-e" 'my-end-of-line)


; do not show startup message
(setq inhibit-startup-message t)

; ansi color on shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; do not show tool-bar
(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

; do not show menu-bar
(if (boundp 'menu-bar-mode) (menu-bar-mode 0))

; show counter-side paren
(show-paren-mode 1)

; region mark visible
(setq-default transient-mark-mode t)

; do not use tab by default
(setq-default indent-tabs-mode nil)

; use tango-dark color-theme
(if (functionp 'load-theme) (load-theme 'tango-dark))

; use iswitchb
; don't use iswitchb because use anything
; (iswitchb-mode 1)

(provide 'init-misc)
