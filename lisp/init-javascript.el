;; requirements
(package-install 'js2-mode)
(package-install 'react-snippets)
(package-install 'json-mode)
(package-install 'typescript-mode)
(package-install 'flymake-eslint)
(package-install 'rjsx-mode)
(package-install 'eslint-fix)

;; add-node-modules-path
(with-eval-after-load 'js-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))


;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; json-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; rjsx-mode
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))



;; indentation level
(add-hook 'typescript-mode-hook
          '(lambda ()
             (setq typescript-indent-level 2)))

(add-hook 'js-mode-hook
          '(lambda ()
             (setq js-indent-level 2)))


;; flymake-eslint
(defun flymake-eslint-eglot-hook ()
  (add-hook 'eglot-managed-mode-hook
            '(lambda ()
               (flymake-eslint-enable))))

(with-eval-after-load 'js2-mode (flymake-eslint-eglot-hook))
(with-eval-after-load 'typescript-mode (flymake-eslint-eglot-hook))


(provide 'init-javascript)
;;; init-javascript.el ends here
