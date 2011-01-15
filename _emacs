;; Get rid of any predefined defaults
(setq inhibit-splash-screen t)

;; Load sub-configs from this directory
(setq emacs-conf-dir (file-name-directory (file-truename load-file-name)))
(add-to-list 'load-path emacs-conf-dir)

(load-library "general-init")
(load-library "python-init")
