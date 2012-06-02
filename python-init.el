;; Setup python mode
(add-to-list 'load-path (concat emacs-conf-dir "python-mode.el-6.0.6"))
(setq py-install-directory (concat emacs-conf-dir "python-mode.el-6.0.6"))
(require 'python-mode)

;; Setup pyflakes
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))
(add-hook 'python-mode-hook 'flymake-mode)

;; Setup pony mode
(add-to-list 'load-path (concat emacs-conf-dir "pony-mode/src"))
(require 'pony-mode)

;; Show the 80 column fill line
(add-hook 'python-mode-hook (lambda () 
  (fci-mode)
  (setq fci-rule-column 80)))
