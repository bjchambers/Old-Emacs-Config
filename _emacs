;; Get rid of any predefined defaults
(setq inhibit-splash-screen t)

;; Setup yasnippet
(yas/initialize)
(yas/load-directory "/usr/share/emacs/etc/yasnippet/snippets")

;; Disable tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Setup autocomplete
(require 'auto-complete-config)
(ac-config-default)

;; Load per-language configs from this directory
(add-to-list 'load-path "~/.emacs.conf.d")

;; Setup python
(load-library "init-python")
