;;; font setting
;;; copied from http://sakito.jp/emacs/emacs23.html#id15
(create-fontset-from-ascii-font "Menlo-15:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
                  'unicode
                  (font-spec :family "Hiragino Maru Gothic ProN" :size 15)
                  nil
                  'append)
(add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))

; show menubar (at top of display, not in frame)
(menu-bar-mode 1)
