;; Get rid of any predefined defaults
(setq inhibit-splash-screen t)

;; Load sub-configs from this directory
(add-to-list 'load-path "~/.emacs.conf.d")
(load-library "general-init")
(load-library "python-init")
