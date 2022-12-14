;; requirements
(package-install 'js2-mode)
(package-install 'react-snippets)
(package-install 'json-mode)
(package-install 'typescript-mode)
(package-install 'flymake-jslint)
(package-install 'rjsx-mode)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; json-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; rjsx-mode
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

(setq js-indent-level 2)

(add-hook 'typescript-mode-hook '(lambda ()
                                   (setq typescript-indent-level 2)))

(add-hook 'javascript-mode-hook '(lambda ()
                                   (setq typescript-indent-level 2)))


;; flymake-jslint
(add-hook 'js-mode-hook 'flymake-jslint-load)

(provide 'init-javascript)
;;; init-javascript.el ends here
