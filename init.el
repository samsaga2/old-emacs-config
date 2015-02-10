(load "~/.emacs.d/core.el")
(load "~/.emacs.d/packages.el")

;; theme
(ensure-package-installed 'solarized-theme)
(load-theme 'solarized-dark t)
(set-default-font "DejaVu Sans Mono-11")

;; evil
(ensure-package-installed 'evil)
(require 'evil)
(evil-mode 1)

;; evil leader
(ensure-package-installed 'evil-leader)
(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "u" 'undo-tree-visualize
  "c" 'comment-or-uncomment-region
  "w" 'save-buffer
  "k" 'kill-buffer
  "p" 'projectile-find-file
  "x" 'execute-extended-command
  "j" 'join-line
  "q" 'kill-buffer) 

;; ace jump
(ensure-package-installed 'ace-jump-mode)
(require 'ace-jump-mode)
(evil-leader/set-key
  "<SPC>" 'ace-jump-word-mode
  "." 'ace-jump-char-mode)

;; helm
(ensure-package-installed 'helm)
(require 'helm-config)
(helm-mode t)

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

;; csharp-mode
(ensure-package-installed 'csharp-mode)
(require 'csharp-mode)

(add-hook 'csharp-mode-hook
          (lambda ()
            (require 'flymake)
            (setq c-basic-offset 4) 
            (c-set-offset 'substatement-open 0)))

;; expand region
(ensure-package-installed 'expand-region)
(require 'expand-region)
(global-set-key (kbd "C-º") 'er/expand-region)

;; company mode
(ensure-package-installed 'company)
(require 'company)
(ensure-package-installed 'expand-region)

;; php mode
(ensure-package-installed 'php-mode)
(require 'php-mode)

;; omnisharp
;; (ensure-package-installed 'omnisharp)
;; (require 'omnisharp)
;; (eval-after-load 'company
;;  '(add-to-list 'company-backends 'company-omnisharp))
;; (add-hook 'csharp-mode-hook 'omnisharp-mode)

;; geiser
(ensure-package-installed 'geiser)
(require 'geiser)

;; prettify symbols
(defconst lisp--prettify-symbols-alist
  '(("lambda"  . ?λ)))
(global-prettify-symbols-mode t)
(add-hook 'scheme-mode-hook
          (lambda () (push '("lambda" . ?λ) prettify-symbols-alist)))
(add-hook 'geiser-mode-hook
          (lambda () (push '("lambda" . ?λ) prettify-symbols-alist)))

;; nyan cat
(ensure-package-installed 'nyan-mode)
(require 'nyan-mode)
(nyan-start-animation)
(nyan-mode)

;; yaml mode
(ensure-package-installed 'yaml-mode)
(require 'yaml-mode)

;; glsl mode
(ensure-package-installed 'glsl-mode)
(require 'glsl-mode)
(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;; slime
(ensure-package-installed 'slime)
(require 'slime)
(slime-setup '(slime-repl slime-asdf slime-fancy slime-banner))

(evil-leader/set-key-for-mode 'lisp-mode "e" 'slime-eval-buffer)
(evil-leader/set-key-for-mode 'lisp-mode "d" 'slime-eval-defun)
(evil-leader/set-key-for-mode 'lisp-mode "s" 'slime)

;; rainbow delimiters
(ensure-package-installed 'rainbow-delimiters)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; key chord
(ensure-package-installed 'key-chord)
(require 'key-chord)
(setq key-chord-two-keys 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-define evil-insert-state-map "ee" 'slime-eval-defun)
(key-chord-mode 1)

;; windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; personal.el
(if (file-exists-p "~/.emacs.d/personal.el")
    (load "~/.emacs.d/personal.el"))
