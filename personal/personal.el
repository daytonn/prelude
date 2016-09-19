;;; personal --- My stuff
;;; Commentary:

;;; Code:
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(require 'linum)
(require 'ansi-color)
(require 'multiple-cursors)
;;(prelude-require-package 'powerline)

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
 
(defun transpose-line-up ()
  (interactive)
  (move-text-up 1)
  (forward-line))
(setq line-move-visual nil)
(setq custom-theme-directory (concat prelude-personal-dir "/themes"))
(setq truncate-lines t)
(if window-system
    (progn
      (global-unset-key "\C-z")
      (load-theme 'neopolitan t)
      (menu-bar-mode 1))
  (progn
    (load-theme 'wombat t)))

(setq prelude-whitespace nil)
(setq linum-format " %d ")
(setq prelude-flyspell nil)
(setq prelude-clean-whitespace-on-save t)

;;(powerline-default-theme)
(disable-theme 'zenburn)
(setq mode-line-format nil)
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "<s-return>") 'newline-below)
(global-set-key (kbd "<M-s-kp-2>") 'split-window-right)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-o") 'ido-find-file)
(global-set-key (kbd "S-<s-return>") 'newline-above)
(global-set-key (kbd "C-s-p") 'transpose-line-up)
(global-set-key (kbd "s-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-\\") 'other-window)
(global-set-key (kbd "s-d") 'duplicate-line)
(global-set-key (kbd "C-s-n") 'move-text-down)
(global-set-key (kbd "s-t") 'projectile-find-file)
(global-set-key (kbd "s-f") 'projectile-grep)
(global-set-key (kbd "s-x") 'kill-region)
(global-set-key (kbd "M-p") 'beggining-of-buffer)
(global-set-key (kbd "M-n") 'end-of-buffer)
(global-set-key (kbd "s-c") 'easy-kill)

(blink-cursor-mode t)
(menu-bar-mode -1)
(set-cursor-color "white")
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(prelude-require-packages '(projectile))
(set-default 'cursor-type '(hbar . 2));;; bar cursor
(set-fringe-style '(6 . 0))

(global-linum-mode 1)
(global-hl-line-mode -1)
(set-face-attribute 'default nil :height 150)
(toggle-scroll-bar -1)
(global-visual-line-mode t)
;;; personal.el ends here
