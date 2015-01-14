;; Common Lisp
(require 'cl)

(load-theme 'tango-dark t)

;; Map C-h to backspace
(global-set-key [(control h)] 'delete-backward-char)

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

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Indentation (global)
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq indent-tabs-mode nil)
(setq tab-width 8)

;; Indentation (C)
(setq c-indent-level 8)

(setq c-brace-imaginary-offset 0)
(setq c-brace-offset -8)
(setq c-argdecl-indent 8)
(setq c-label-offset -8)
(setq c-continued-statement-offset 8)

;; Scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

