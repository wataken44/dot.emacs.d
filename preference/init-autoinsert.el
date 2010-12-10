
;; imported from http://d.hatena.ne.jp/higepon/20080731/1217491155

(require 'autoinsert)

;; use auto-insert
(auto-insert-mode)

;; template directory(last slash is important) 
(setq auto-insert-directory "~/.emacs.d/resource/auto-insert/")

;; do not prompt before insert
;; (setq auto-insert-query nil)

;; templates
(setq auto-insert-alist
      (nconc '(
               ("\\.cpp$" . ["template.cpp" replace-template])
               ("\\.h$"   . ["template.h" replace-template])
               ("\\.py$"  . ["template.py" replace-template])
               ) auto-insert-alist))

(require 'cl)

(defvar template-replacements-alists
  '(("%file%" . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ("%include-guard%" . (lambda () (format "INCLUDED_%s_H" (upcase (file-name-sans-extension (file-name-nondirectory buffer-file-name))))))))

(defun replace-template ()
  (mapc #'(lambda(c)
        (progn
          (goto-char (point-min))
          (replace-string (car c) (funcall (cdr c)) nil)))
    template-replacements-alists)
  (goto-char (point-max)))

;; add-hook is called by default, so this code is not necessary
;; (add-hook 'find-file-not-found-hooks 'auto-insert)

(provide 'init-autoinsert)