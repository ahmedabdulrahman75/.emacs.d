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
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "packages")
(load "global")
(load "javascript-lisp")
(load "web-lisp")
;;--------------------------------------------------------------------------
