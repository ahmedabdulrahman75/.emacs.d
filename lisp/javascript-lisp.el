;; requirements
(package-install 'js2-mode)
(package-install 'rjsx-mode)
(package-install 'react-snippets)
(package-install 'json-mode)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;rjsx mode
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
;; json-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
