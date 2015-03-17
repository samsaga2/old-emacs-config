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
