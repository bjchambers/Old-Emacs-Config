;; Setup python mode
(add-to-list 'load-path (concat emacs-conf-dir "python-mode.el-6.0.6"))
(setq py-install-directory (concat emacs-conf-dir "python-mode.el-6.0.6"))
(require 'python-mode)

;; Setup pony mode for django
(add-to-list 'load-path (concat emacs-conf-dir "pony-mode/src"))
(require 'pony-mode)