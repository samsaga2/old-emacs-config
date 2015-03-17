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
  "k" 'comment-or-uncomment-region
  "s" 'save-buffer
  "p" 'projectile-find-file
  "x" 'execute-extended-command
  "j" 'join-line
  "q" 'kill-buffer) 

;; key chord
(ensure-package-installed 'key-chord)
(require 'key-chord)
(setq key-chord-two-keys 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)
