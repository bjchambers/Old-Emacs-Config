;; Enable yasnippet
(yas/initialize)
(yas/load-directory "/usr/share/emacs/etc/yasnippet/snippets")

;; Disable tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Setup whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline)
(setq next-line-add-newlines nil)

;; Show column numbers
(column-number-mode)

;; Auto completion
(require 'auto-complete-config)
(ac-config-default)

;; Magit
(add-to-list 'load-path (concat emacs-conf-dir "magit"))
(autoload 'magit-status "magit" nil t)
(global-set-key "\C-cs" 'magit-status)
; (require 'magit-svn)

;; IDO and SMEX
(ido-mode t)
(setq ido-enable-flex-matching t)

(add-to-list 'load-path (concat emacs-conf-dir "smex"))
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;; This is old M-x
