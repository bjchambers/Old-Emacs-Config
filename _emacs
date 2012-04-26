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
(load-library "python-init")

(require 'color-theme)
(color-theme-initialize)

;; Allow for full-screen
(defun set-full-screen ()
  (modify-frame-parameters nil
   `((old-fullscreen . ,(frame-parameter nil 'fullscreen))
     (old-height . ,(frame-parameter nil 'height))
     (old-width . ,(frame-parameter nil 'width))
     (old-left . ,(frame-parameter nil 'left))
     (old-top . ,(frame-parameter nil 'top))
     (fullscreen . fullboth))))

(defun unset-full-screen ()
  (modify-frame-parameters nil
   `((fullscreen . ,(frame-parameter nil 'old-fullscreen))
     (height . ,(frame-parameter nil 'old-height))
     (width . ,(frame-parameter nil 'old-width))
     (left . ,(frame-parameter nil 'old-left))
     (top . ,(frame-parameter nil 'old-top)))))

(defun toggle-full-screen ()
  "Toggles full-screen mode and the bars"
  (interactive)
  (menu-bar-mode)
  (tool-bar-mode)
  (scroll-bar-mode)

  (if (equal 'fullboth (frame-parameter nil 'fullscreen))
      (unset-full-screen)
      (set-full-screen)))
(global-set-key [f11] 'toggle-full-screen)
