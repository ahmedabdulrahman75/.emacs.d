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
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") ; theme folder
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "packages")
(load "global")
(load "javascript-lisp")
(load "web-lisp")
(load "latex-lisp")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-source-correlate-method (quote synctex))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list (quote (("atril" ("atril") ""))))
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-html "xdg-open")
     (output-pdf "Atril"))))
 '(custom-enabled-themes (quote (high-contrast)))
 '(custom-safe-themes
   (quote
    ("8e7044bfad5a2e70dfc4671337a4f772ee1b41c5677b8318f17f046faa42b16b" default)))
 '(doc-view-continuous t)
 '(package-selected-packages
   (quote
    (auctex company-math org helm tabbar js2-mode company yasnippet yasnippet-snippets which-key web-mode treemacs tabbar-ruler switch-window rjsx-mode react-snippets php-mode markdown-mode json-mode idle-highlight-mode hungry-delete flyspell-correct-helm emmet-mode drag-stuff company-web company-tern company-quickhelp autopair)))
 '(scss-compile-at-save nil)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 113 :width normal)))))
