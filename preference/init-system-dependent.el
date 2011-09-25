(if (featurep 'ns)
    (require 'init-cocoa))

(if (equal system-type 'gnu/linux)
    (require 'init-ubuntu))

(provide 'init-system-dependent)