
(require 'anything-startup)
(require 'anything-config)

(setq anything-sources 
      '(anything-c-source-bookmarks
        anything-c-source-buffers
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

(provide 'init-anything)


