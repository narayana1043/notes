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
