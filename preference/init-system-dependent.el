
;; cocoa emacs
(if (and (featurep 'ns)
         (display-graphic-p))
    (require 'init-cocoa))

;; ubuntu
(if (equal system-type 'gnu/linux)
    (require 'init-ubuntu))

(provide 'init-system-dependent)
