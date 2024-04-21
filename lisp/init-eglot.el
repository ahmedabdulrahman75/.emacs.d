;; eglot
(use-package eglot
  :ensure t
  :config
  (setq eglot-confirm-server-initiated-edits nil)
  (add-hook 'prog-mode-hook 'eglot-ensure)
  :hook (eglot--managed-mode . (lambda () (company-mode t))))

(provide 'init-eglot)
;;; init-eglot.el ends here
