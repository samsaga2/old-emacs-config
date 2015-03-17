;; slime
(ensure-package-installed 'slime)
(require 'slime)
(slime-setup '(slime-repl slime-asdf slime-fancy slime-banner))

(evil-leader/set-key-for-mode 'lisp-mode "e" 'slime-eval-buffer)
(evil-leader/set-key-for-mode 'lisp-mode "d" 'slime-eval-defun)
(evil-leader/set-key-for-mode 'lisp-mode "s" 'slime)
