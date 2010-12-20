; init-auto-complete

(setq ac-dictionary-directories '("~/.emacs.d/work/auto-complete"))

(require 'auto-complete-config)

(ac-config-default)

(provide 'init-auto-complete)