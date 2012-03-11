;;; init-topcoder.el --- configuration for topcoder

;; Copyright (C) 2012  wataken44

;; Author: wataken44 <wataken44@iris.local>
;; Keywords: 

(global-set-key "\C-cc" 'compile)

(add-hook 'c++-mode-hook
          '(lambda ()
             (set (make-local-variable 'compile-command)
                  (concat "make src="
                          (file-name-nondirectory (buffer-file-name))))))

(yas/load-directory "~/Documents/topcoder/work/snippets")

(provide 'init-topcoder)