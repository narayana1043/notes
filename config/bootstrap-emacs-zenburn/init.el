;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;; require package
(require 'package)

;; add melpa stable
(add-to-list 'package-archives
         '("melpa-stable" . "https://stable.melpa.org/packages/"))

;; add melpa
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))


;; Code

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)

(require 'lang-python)
(require 'org-mode-customizer)


;; check os to configure key bindings
;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (require 'set-keys-windows)))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (require 'set-keys-apple)))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux"))))


;; bring all the other customizations
(require 'other-custom-configs)
