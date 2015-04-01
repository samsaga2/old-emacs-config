;; rainbow delimiters
(ensure-package-installed 'rainbow-delimiters)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; ace jump
(ensure-package-installed 'ace-jump-mode)
(require 'ace-jump-mode)
(evil-leader/set-key
  "<SPC>" 'ace-jump-word-mode
  "c" 'ace-jump-char-mode)

;; helm
(ensure-package-installed 'helm)
(require 'helm-config)
(helm-mode t)
(setq helm-display-header-line nil)
(set-face-attribute 'helm-source-header nil :height 0.1)
(helm-autoresize-mode 1)
(setq helm-autoresize-max-height 30)
(setq helm-autoresize-min-height 30)
(setq helm-split-window-in-side-p t)

(evil-leader/set-key
  "o" 'helm-mini
  "b" 'helm-buffers-list)

;; multiple cursors
(ensure-package-installed 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; magit
(ensure-package-installed 'magit)
(require 'magit)
(evil-leader/set-key
  "g" 'magit-status)

;; git gutter
(ensure-package-installed 'git-gutter)
(require 'git-gutter)
(global-git-gutter-mode t)

;; paredit
(ensure-package-installed 'smartparens)
(require 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode 1)

;; evil paredit
(ensure-package-installed 'evil-paredit)
(require 'evil-paredit)

;; projectile
(ensure-package-installed 'projectile)
(require 'projectile)
(projectile-global-mode)

;; flymake
(ensure-package-installed 'flymake)
(require 'flymake)

;; expand region
(ensure-package-installed 'expand-region)
(require 'expand-region)
(global-set-key (kbd "C-º") 'er/expand-region)
