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
