;;; Valentino - 2020
;;; <valentino2@protonmail.com>
;;; emacs init.el

;;; META
;; disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;; load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'seventies t)

;; change autosave location
(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list")))

;; prevent lockfiles
(setq create-lockfiles nil)

;;; FORMATTING
;; truncate lines on default
(set-default 'truncate-lines t)

;; stop auto-indent on carriage return
(electric-indent-mode 0)

;;; OCTAVE MODE
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
;; turn off auto indent on newline in Octave
(setq octave-block-offset nil)
(setq octave-continuation-offset nil)
