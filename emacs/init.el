;; https://medium.com/really-learn-programming/configuring-emacs-on-macos-a6c5a0a8b9fa
(unless (server-running-p) (server-start))

(when (featurep 'ns)
  (defun ns-raise-emacs ()
    "Raise Emacs."
    (ns-do-applescript "tell application \"Emacs\" to activate"))
(defun ns-raise-emacs-with-frame (frame)
    "Raise Emacs and select the provided frame."
    (with-selected-frame frame
      (when (display-graphic-p)
        (ns-raise-emacs))))
(add-hook 'after-make-frame-functions 'ns-raise-emacs-with-frame)
(when (display-graphic-p)
    (ns-raise-emacs)))

;; MacOS-specific Modifier keys, fonts, and emojis
(when (equal system-type 'darwin)
  (set-keyboard-coding-system nil)
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  (when (member "Fira Code" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Fira Code-14"))
    (add-to-list 'default-frame-alist '(font . "Fira Code-14")))
  (set-fontset-font t 'symbol (font-spec :family "Apple Symbols") nil 'prepend)
  (set-fontset-font t 'symbol (font-spec :family "Apple Color Emoji") nil 'prepend))

;; use spaces not tabs
(setq-default indent-tabs-mode nil)

;; https://github.com/susam/emacs4cl#line-by-line-explanation
(menu-bar-mode 0)
(when (display-graphic-p)
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

(setq inhibit-startup-screen t)

;; try M-x customize-themes
(load-theme 'tango-dark)

;; highlight matching parens
(show-paren-mode)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; tell package-install to write customizations to custom.el, not this file
(setq custom-file (concat user-emacs-directory "custom.el"))

(dolist (package '(slime paredit rainbow-delimiters))
  (unless (package-installed-p package)
    (package-install package)))

;; add asdf shims such as sbcl to path
(add-to-list 'exec-path "/Users/brosas/.asdf/shims")
;; specify the program to be invoked for SLIME
(setq inferior-lisp-program "sbcl")

;; enable paredit for a variety of modes
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook 'enable-paredit-mode)
;; enable paren delete in slime mode
(defun override-slime-del-key ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-del-key)

;; enable rainbow delimiters
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'ielm-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)
