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
(load "~/.emacs.d/general-config") ; general configuration lisp file
(add-to-list 'load-path "~/.emacs.d/lisp") ; packages configuration file
(load "global")
(load "python-lisp")
(load "javascript-lisp")
(load "web-lisp")
(load "php-lisp")
;; (load "sessions-lisp")
;; (load "latex-lisp")
;;--------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(adwaita))
 '(package-selected-packages
   '(typescript-mode js2-mode flycheck markdown-mode company yasnippet yasnippet-snippets which-key web-mode treemacs tide rjsx-mode react-snippets py-autopep8 prettier multiple-cursors mode-icons markdown-preview-mode magit json-mode indent-guide impatient-mode helm emmet-mode drag-stuff doom-modeline company-web company-quickhelp centaur-tabs all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
