;; set keys for Apple keyboard, for emacs in OS X
(when (eq system-type 'darwin)
  (setq ns-command-modifier 'super
        ns-option-modifier  'meta
	ns-function-modifier 'hyper))

;; provide is added here to make this file available for import in the init file
(provide 'set-keys)
