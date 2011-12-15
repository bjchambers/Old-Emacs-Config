;; Get rid of any predefined defaults
(setq inhibit-splash-screen t)

;; Load sub-configs from this directory
(setq emacs-conf-dir (file-name-directory (file-truename load-file-name)))
(add-to-list 'load-path emacs-conf-dir)

(setq custom-file (concat emacs-conf-dir "emacs-custom.el"))
(load custom-file)

(load-library "general-init")
(load-library "haskell-init")
(load-library "org-init")
(load-library "latex-init")
(load-library "javascript-init")

(require 'color-theme)
(color-theme-initialize)
(color-theme-subtle-hacker)
