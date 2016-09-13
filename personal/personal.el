;;; personal --- My stuff
;;; Commentary:

;;; Code:
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(require 'linum)
(require 'ansi-color)
(prelude-require-package 'powerline)

(defun newline-below ()
   (interactive)
   (move-end-of-line 1)
   (newline-and-indent))

(defun newline-above ()
  (interactive)
  (previous-line)
  (newline-below))

(defun duplicate-line ()
  (interactive)
  (prelude-duplicate-current-line-or-region 1))

(powerline-default-theme)

(setq custom-theme-directory (concat prelude-personal-dir "/themes"))

(if window-system
    (progn
      (global-unset-key "\C-z")
      (load-theme 'neopolitan t)
      (menu-bar-mode 1)))

(disable-theme 'zenburn)

(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "<s-return>") 'newline-below)
(global-set-key (kbd "<M-s-kp-2>") 'split-window-right)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "C-s-p") 'move-text-up)
(global-set-key (kbd "s-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "S-<s-return>") 'newline-above)
(global-set-key (kbd "s-o") 'helm-find-files)
(global-set-key (kbd "C-\\") 'other-window)
(global-set-key (kbd "s-d") 'duplicate-line)
(global-set-key (kbd "C-s-n") 'move-text-down)
(global-set-key (kbd "s-t") 'find-file)
(blink-cursor-mode t)
(set-cursor-color "white")

(set-default 'cursor-type '(hbar . 2));;; bar cursor
(set-fringe-style '(6 . 0))

(global-linum-mode 1)
(global-hl-line-mode -1)
(setq linum-format " %d ")
(setq prelude-flyspell nil)
(toggle-scroll-bar -1)
(global-visual-line-mode t)
(set-face-attribute 'default nil :height 150)
(prelude-require-packages '(projectile))
;;; personal.el ends here
