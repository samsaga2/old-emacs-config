;; theme
(ensure-package-installed 'solarized-theme)
(load-theme 'solarized-dark t)
(set-default-font "DejaVu Sans Mono-11")

;; nyan cat
(ensure-package-installed 'nyan-mode)
(require 'nyan-mode)
(nyan-start-animation)
(nyan-mode)
