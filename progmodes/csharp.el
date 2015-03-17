;; csharp-mode
(ensure-package-installed 'csharp-mode)
(require 'csharp-mode)

(add-hook 'csharp-mode-hook
          (lambda ()
            (require 'flymake)
            (setq c-basic-offset 4) 
            (c-set-offset 'substatement-open 0)))

;; omnisharp
;; (ensure-package-installed 'omnisharp)
;; (require 'omnisharp)
;; (eval-after-load 'company
;;  '(add-to-list 'company-backends 'company-omnisharp))
;; (add-hook 'csharp-mode-hook 'omnisharp-mode)
