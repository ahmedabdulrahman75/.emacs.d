;; requirements
(package-install 'js2-mode)
(package-install 'rjsx-mode)
(package-install 'react-snippets)
(package-install 'json-mode)
(package-install 'typescript-mode)
(package-install 'tide)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;rjsx mode
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
;; json-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

(add-hook 'typescript-mode-hook '(lambda () 
 (setq typescript-indent-level 2)))

(add-hook 'javascript-mode-hook '(lambda () 
 (setq typescript-indent-level 2)))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

(add-hook 'typescript-mode-hook #'setup-tide-mode)
