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
;; (load "sessions-lisp")
;; (load "latex-lisp")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e09401ab2c457e2e4d8b800e1c546dbc8339dc33b2877836ba5d9b6294ae6e55" "c2d6d17e0918b7f3c73dc456db1fedfb86b16bf17ef9a926b6b891ea39098718" default))
 '(package-selected-packages
   '(vs-light-theme dotenv-mode smex flymake-eslint js2-mode ivy-rich vterm swiper ivy all-the-icons markdown-mode company yasnippet yasnippet-snippets which-key web-mode vscode-dark-plus-theme virtualenvwrapper typescript-mode treemacs switch-window rjsx-mode react-snippets pyvenv py-autopep8 php-mode multiple-cursors multi-vterm mode-icons markdown-preview-mode magit json-mode indent-guide impatient-mode format-all flymake-jslint exec-path-from-shell eslint-fix eshell-prompt-extras emmet-mode eglot editorconfig drag-stuff doom-modeline counsel company-web company-quickhelp centaur-tabs all-the-icons-ivy-rich)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
