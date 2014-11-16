
(load-theme 'tango-dark t)

;; Line numbers
(global-linum-mode 1)
(setq linum-format "%4d")

;; Remove toolbar
(tool-bar-mode -1)

;; Answer just 'y' or 'no' instead of 'yes' and 'no'
(defun yes-or-no-p (prompt)
  (y-or-n-p prompt))

;; Turn off backup files creation
(setq make-backup-files nil)

;; Highlight matching parenthesis
(show-paren-mode 1)

;; Show info at echo area
(eldoc-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(quack-default-program "mit-scheme"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
