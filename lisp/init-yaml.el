;; enable eglot
(use-package yaml-mode
  :ensure t
  :after eglot
  :init
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  :config
   (add-hook 'yaml-mode-hook 'eglot-ensure))

(provide 'init-yaml)
;;; init-yaml.el ends here
