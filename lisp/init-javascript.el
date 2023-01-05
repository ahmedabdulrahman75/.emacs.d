;; requirements
(package-install 'js2-mode)
(package-install 'react-snippets)
(package-install 'json-mode)
(package-install 'typescript-mode)
(package-install 'flymake-eslint)
(package-install 'rjsx-mode)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; json-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; rjsx-mode
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))


(add-hook 'typescript-mode-hook '(lambda ()
                                   (setq typescript-indent-level 2)))

(add-hook 'js2-mode-hook '(lambda ()
                            (setq js-indent-level 2)))

;; flymake-eslint
(add-hook 'js2-mode-hook '(lambda ()
                            (flymake-eslint-enable)))

(add-hook 'typescript-mode-hook '(lambda ()
                                   (flymake-eslint-enable)))

(provide 'init-javascript)
;;; init-javascript.el ends here
