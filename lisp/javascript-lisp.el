;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;rjsx-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))


;; company-tern and tern mode
(add-to-list 'company-backends 'company-tern)

(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
