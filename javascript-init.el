(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-to-list 'load-path (concat emacs-conf-dir "flymake-node-jshint"))
(require 'flymake-node-jshint)
(setq flymake-node-jshint-config "~/.jshintrc-node.json")
(add-hook 'js2-mode-hook (lambda () (flymake-mode 1)))

;; Show the 80 column fill line
(add-hook 'js2-mode-hook (lambda () 
  (fci-mode)
  (setq fci-rule-column 80)))
