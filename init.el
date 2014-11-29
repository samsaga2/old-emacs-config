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

(evil-leader/set-leader ",")
(evil-leader/set-key
  "u" 'undo-tree-visualize
  "c" 'comment-or-uncomment-region
  "w" 'save-buffer
  "b" 'switch-to-buffer
  "k" 'kill-buffer) 

;; ace jump
(ensure-package-installed 'ace-jump-mode)
(require 'ace-jump-mode)
(evil-leader/set-key
  "," 'ace-jump-word-mode
  "." 'ace-jump-char-mode)

;; helm
(ensure-package-installed 'helm)
(require 'helm-config)
(helm-mode t)

(evil-leader/set-key
  "o" 'helm-mini)

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
(ensure-package-installed 'paredit)
(require 'paredit)
(add-hook 'prog-mode-hook 'electric-pair-mode)

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

;; personal.el
(if (file-exists-p "~/.emacs.d/personal.el")
    (load "~/.emacs.d/personal.el"))

