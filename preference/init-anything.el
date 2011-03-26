
(require 'anything-startup)

; default anything-sources

(setq anything-sources 
      '(anything-c-source-bookmarks
        anything-c-source-buffers+
        anything-c-source-calculation-result
        anything-c-source-emacs-commands
        anything-c-source-emacs-functions
        anything-c-source-file-name-history
        anything-c-source-files-in-current-dir
        anything-c-source-info-pages
        anything-c-source-locate
        anything-c-source-man-pages
        anything-c-source-recentf
        ))

(require 'anything-complete)

; configuration
(anything-lisp-complete-symbol-set-timer 1)
(anything-read-string-mode 1)

(anything-lisp-complete-symbol-set-timer 150)

(setq anything-c-adaptive-history-file 
      "~/.emacs.d/work/anything-c-adaptive-history")

; buffer selection
(define-key global-map (kbd "C-x b") 'anything-buffers+)

(provide 'init-anything)
