;;; init-yasnippet.el --- init for yasnippet

;; Copyright (C) 2010  wataken44

;; Author: wataken44 <wataken44@iris.local>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'yasnippet)
(yas/initialize)

;; use my snippets(almost all snippets are copy of original)
(yas/load-directory "~/.emacs.d/resource/yasnippet/snippets")

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
