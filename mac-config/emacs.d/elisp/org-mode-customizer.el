;; (require 'org)
;; (define-key global-map "\C-cl" 'org-store-link)
;; (define-key global-map "\C-ca" 'org-agenda)
;; (setq org-log-done t)

;; TODO customization
(use-package org
  :pin melpa-stable
  :init
  (setq org-log-into-drawer "LOGBOOK")
  ;; enable org-indent-mode
  (setq org-startup-indented t)
  (setq org-todo-keywords
        '((sequence "TODO(t)"
                    "IN-PROGRESS(i)"
                    "BLOCKED(b@)"
                    "|"
                    "DONE(d!)"
                    "DELEGATED(g@)"
                    "CANCELED(c)")))

(setq-default org-catch-invisible-edits 'smart))

;; setting org-agenda-files
;; (setq org-agenda-files (list "~/Documents/notes/vmarni/ana-app.org" "~/Documents/notes/vmarni/daily-logs.org"))

;; clocking config
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; image settings
;; use the below line to show all the images. you can use C-c C-x C-v to toggle the image
;; (setq org-startup-with-inline-images t)
;; use below 2 lines to set all the images dimensions to deafult to 400
;; (setq org-image-actual-width nil)
;; (setq org-image-actual-width 400)

;; plotting in org-mode using org-plot shortcut
(local-set-key "\M-\C-g" 'org-plot/gnuplot)

;; provide is added here to make this file available for import in the init file
(provide 'org-mode-customizer)
