;; Load ropemacs
(pymacs-load "ropemacs" "rope-")

;; bind RET to py-newline-and-indent
;; Autofill inside of comments
(defun python-auto-fill-comments-only ()
  (auto-fill-mode 1)
  (set (make-local-variable 'fill-nobreak-predicate)
       (lambda ()
	 (not (python-in-string/comment)))))

(add-hook 'python-mode-hook '(lambda ()
    (python-auto-fill-comments-only)
    (define-key python-mode-map "\C-m" 'newline-and-indent)))

(setq ropemacs-enable-autoimport t)
