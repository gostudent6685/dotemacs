;; Installed packages
;; SLIME (and its dependencies)
;; rainbow-blocks
;; auto-complete

;; emacs cheatsheet
;; checking if the package is intalled correctly
;;     M-x locate-library RET [package-name] RET

;; ELPA, MELPA Setting
;; copied from http://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages")))
(package-initialize)

;; shortcuts for moving cursor between windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; autoindent
;; copied from https://www.emacswiki.org/emacs/AutoIndentation
(add-hook 'lisp-mode-hook 
	  '(lambda () (local-set-key (kbd "RET")
				     'newline-and-indent)))

;; enable slime
;; copied from https://github.com/slime/slime
;; change 'sbcl-location' to sbcl execution path
;; Set your lisp system and, optionally, some contribs
(require 'slime)
(let ((sbcl-location "sbcl.exe"))
  (setq inferior-lisp-program sbcl-location))
(setq slime-contribs '(slime-fancy))
(setq slime-auto-connect 'ask)

;; settings for rainbow-blocks
;; copied from https://github.com/istib/rainbow-blocks
(require 'rainbow-blocks)
(add-hook 'lisp-mode-hook 'rainbow-blocks-mode)

;; auto-complete basic configuration
;; copied from https://github.com/auto-complete/auto-complete
(ac-config-default)
