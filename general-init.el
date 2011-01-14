;; Setup yasnippet
(yas/initialize)
(yas/load-directory "/usr/share/emacs/etc/yasnippet/snippets")

;; Disable tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Auto completion
(require 'auto-complete-config)
(ac-config-default)
