;;--------------------------------------------------------------------------
;; repo list
;;--------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;--------------------------------------------------------------------------
;; loading files
;;--------------------------------------------------------------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load "~/.emacs.d/general-config") ; general configuration lisp file

(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "packages")
(load "global")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (high-contrast)))
 '(custom-safe-themes
   (quote
    ("75bd3a42d0c36567a9128e989bd0f5ad0eee258c7187629b957a51de3a190f60" default)))
 '(package-selected-packages
   (quote
    (company which-key markdown-mode company-quickhelp autopair))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
