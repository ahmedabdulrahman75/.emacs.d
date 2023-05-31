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
(load "~/.emacs.d/custom-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "init-packages")
(load "init-global")
(load "init-eglot")
(load "init-python")
(load "init-javascript")
(load "init-web")
(load "init-java")
(load "init-angular")
(load "init-org")
(load "init-yaml")
;; (load "latex-lisp")
;;--------------------------------------------------------------------------
;; set custom variables in custom.el but never loaded
(setq custom-file (concat user-emacs-directory "/custom.el"))
