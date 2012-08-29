;;; font setting
;;; copied from http://sakito.jp/emacs/emacs23.html#id15
(create-fontset-from-ascii-font "Menlo-15:weight=normal:slant=normal" nil "menlomarugo")
(set-fontset-font "fontset-menlomarugo"
                  'unicode
                  (font-spec :family "Hiragino Maru Gothic ProN" :size 15)
                  nil
                  'append)
(setq face-font-rescale-alist '(("^-apple-hiragino.*" . 1.2)))
(add-to-list 'default-frame-alist '(font . "fontset-menlomarugo"))

; show menubar (at top of display, not in frame)
(menu-bar-mode 1)

(provide 'init-cocoa)
