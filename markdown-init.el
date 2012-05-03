(add-to-list 'load-path (concat emacs-conf-dir "markdown-mode"))
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
  (cons '("\\.md" . markdown-mode) auto-mode-alist))
