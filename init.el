;;--------------------------------------------------------------------------
;; repo list
;;--------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; solve network problem
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;;--------------------------------------------------------------------------
;; loading files
;;--------------------------------------------------------------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "packages")
(load "global")
(load "javascript-lisp")
(load "web-lisp")

;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (high-contrast)))
 '(custom-safe-themes
   (quote
    ("8e7044bfad5a2e70dfc4671337a4f772ee1b41c5677b8318f17f046faa42b16b" default)))
 '(package-selected-packages
   (quote
    (tabbar-ruler hungry-delete flyspell-correct-helm json-mode org js2-mode company yasnippet yasnippet-snippets which-key web-mode treemacs switch-window rjsx-mode react-snippets php-mode markdown-mode idle-highlight-mode helm emmet-mode drag-stuff company-web company-tern company-quickhelp autopair)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 105 :width normal)))))
