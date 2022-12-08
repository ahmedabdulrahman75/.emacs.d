;;--------------------------------------------------------------------------
;; repo list
;;--------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
;; solve network problem
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;;--------------------------------------------------------------------------
;; loading files
;;--------------------------------------------------------------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") ; theme folder
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "global")
(load "python-lisp")
(load "javascript-lisp")
(load "web-lisp")
(load "php-lisp")
(load "java-lisp")
;; (load "sessions-lisp")
;; (load "latex-lisp")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(vscode-dark-plus))
 '(custom-safe-themes
   '("eabc4781c1d1f4db48bdc99508bb5b31baae6452edcab18aa6de75e6dce01f66" default))
 '(package-selected-packages
   '(eshell-prompt-extras js2-mode swiper ivy markdown-mode company yasnippet yasnippet-snippets which-key web-mode typescript-mode treemacs switch-window rjsx-mode react-snippets pyvenv py-autopep8 php-mode multiple-cursors mode-icons markdown-preview-mode magit json-mode indent-guide impatient-mode format-all flymake-jslint emmet-mode eglot editorconfig drag-stuff doom-modeline counsel company-web company-quickhelp centaur-tabs all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
