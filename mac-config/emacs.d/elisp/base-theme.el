(use-package zenburn-theme
  :defer t
  :init
  (load-theme 'zenburn t))

(provide 'base-theme)

;; font-family and font-size settings
(set-face-attribute 'default nil :family "Monaco")
(set-face-attribute 'default nil :height 165)
