;; core
(load "~/.emacs.d/core.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/evil.el")
(load "~/.emacs.d/editor.el")

;; prog modes
(load "~/.emacs.d/progmodes/csharp.el")
(load "~/.emacs.d/progmodes/scheme.el")
(load "~/.emacs.d/progmodes/yaml.el")
(load "~/.emacs.d/progmodes/glsl.el")
(load "~/.emacs.d/progmodes/lisp.el")
(load "~/.emacs.d/progmodes/ocaml.el")
(load "~/.emacs.d/progmodes/clojure.el")
(load "~/.emacs.d/progmodes/webmode.el")

;; personal
(if (file-exists-p "~/.emacs.d/personal.el")
    (load "~/.emacs.d/personal.el"))
