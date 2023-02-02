;;--------------------------------------------------------------------------
;; repo list
;;--------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
;; solve network problem
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;;--------------------------------------------------------------------------
;; loading files
;;--------------------------------------------------------------------------
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "init-global")
(load "init-python")
(load "init-javascript")
(load "init-web")
(load "init-java")
(load "init-tailwindcss")
;; (load "sessions-lisp")
;; (load "latex-lisp")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(add-node-modules-path js2-mode vscode-dark-plus-theme ivy-rich vterm swiper ivy all-the-icons markdown-mode company yasnippet yasnippet-snippets which-key web-mode typescript-mode treemacs switch-window smex rjsx-mode react-snippets pyvenv py-autopep8 multiple-cursors multi-vterm mode-icons markdown-preview-mode magit json-mode indent-guide impatient-mode format-all flymake-eslint exec-path-from-shell emmet-mode eglot editorconfig drag-stuff dotenv-mode doom-modeline counsel company-web company-quickhelp centaur-tabs auctex all-the-icons-ivy-rich)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
