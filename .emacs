;; Common Lisp
;(require 'cl)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq lsp-keymap-prefix "M-l")
(require 'lsp-mode)

(require 'lsp-ui)
(use-package lsp-ui)

(load-theme 'tango-dark t)
(setq inhibit-splash-screen t)

;; Copy/paste from/to X for console emacs
;; http://www.emacswiki.org/emacs-en/download/xclip.el
(load-file "~/.emacs.d/xclip.el")

;; Remap basic keys
(global-set-key [(control h)] 'delete-backward-char)
(define-key isearch-mode-map [(control h)] 'isearch-delete-char)

;; Line numbers
(global-linum-mode 0)
(setq linum-format "%4d ")

;; Answer just 'y' or 'no' instead of 'yes' and 'no'
(defun yes-or-no-p (prompt)
  (y-or-n-p prompt))

;; Turn off backup, autosave and lock files creation
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Show info at echo area
(eldoc-mode 1)

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-enable-last-directory-history nil)
(setq ido-record-commands nil)
(setq ido-max-work-directory-list 0)
(setq ido-max-work-file-list 0)

;; Indentation (global)
(setq tab-width 8)

;; Indentation (C)
(setq c-default-style "linux")
(setq c-basic-offset 8)
(setq c-indent-level 8)

;; Scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; whitespace-mode
;(global-whitespace-mode t)
;(setq whitespace-style '(trailing tabs tab-mark space-after-tab space-before-tab indentation))

;; Performance
(setq font-lock-maximum-decoration 6)

;; Thanx to http://alexkorablev.ru/2017/06/10/emacs-got-keys/
(defun reverse-input-method (input-method)
  "Build the reverse mapping of single letters from INPUT-METHOD."
  (interactive
   (list (read-input-method-name "Use input method (default current): ")))
  (if (and input-method (symbolp input-method))
      (setq input-method (symbol-name input-method)))
  (let ((current current-input-method)
	(modifiers '(nil (control) (meta) (control meta))))
    (when input-method
      (activate-input-method input-method))
    (when (and current-input-method quail-keyboard-layout)
      (dolist (map (cdr (quail-map)))
	(let* ((to (car map))
	       (from (quail-get-translation
		      (cadr map) (char-to-string to) 1)))
	  (when (and (characterp from) (characterp to))
	    (dolist (mod modifiers)
	      (define-key local-function-key-map
		(vector (append mod (list from)))
		(vector (append mod (list to)))))))))
    (when input-method
      (activate-input-method current))))

(reverse-input-method 'russian-computer)

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(tool-bar-mode nil))
