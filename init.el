;;; Valentino - 2020
;;; <valentino2@protonmail.com>
;;; emacs init.el

;; disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;; load theme
(load "~/.emacs.d/themes/Seventies.el")

;; prevent lockfiles
(setq create-lockfiles nil)

;; truncate lines on default
(set-default 'truncate-lines t)

;; change autosave location
(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list")))

;;; OCTAVE MODE
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
;; turn off auto indent on newline in Octave
(setq octave-block-offset nil)
(setq octave-continuation-offset nil)

