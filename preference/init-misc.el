;; init-misc.el
;; miscellanous setting

; font-lock-mode
(global-font-lock-mode t)

; define function
(defun next-user-buffer ()
  ;; switch to next user's buffer
  ;; name of user's buffer start with [^ *]
  (interactive)
  ;; exceptional buffer to be switched
  (setq no-ignore-buffer-alist '("*shell*"))
  ;; get current buffer index in buffer-list
  (setq buffer-list-length (length (buffer-list))) 
  (setq current-buffer-index 
        (- buffer-list-length
           (length (member (current-buffer) (buffer-list)))))
  ;; search and jump to next user buffer
  ;; start from current-buffer-index + 1 and wrap around
  (dotimes (i buffer-list-length)
    (setq buffer-index
          (% (+ i current-buffer-index 1) buffer-list-length))
    (setq dest-buffer (nth buffer-index (buffer-list)))
    (setq dest-buffer-name (buffer-name dest-buffer))
    (if (or (string-match-p "^[^ *]" dest-buffer-name)
            (member dest-buffer-name no-ignore-buffer-alist))
        (progn (switch-to-buffer dest-buffer)
               (return t))
      )
    )
  )

; short cut
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cr" 'replace-string)
(global-set-key "\C-cR" 'query-replace)
(global-set-key "\C-c\M-r" 'replace-regexp)
(global-set-key "\C-ci" 'indent-region)
(global-set-key "\C-t" 'next-user-buffer)
(global-set-key "\C-cT" 'next-buffer)

; do not show startup message
(setq inhibit-startup-message t)

; ansi color on shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; do not show tool-bar
(tool-bar-mode 0)

; do not show menu-bar
(menu-bar-mode 0)

; show counter-side paren
(show-paren-mode 1)

; region mark visible
(setq-default transient-mark-mode t)

; do not use tab by default
(setq-default indent-tabs-mode nil)

; use iswitchb
(iswitchb-mode 1)

(provide 'init-misc)
