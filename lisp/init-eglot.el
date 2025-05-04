;; eglot
(use-package eglot
  :ensure t
  :config
  (setq eglot-confirm-server-initiated-edits nil)
  (add-hook 'prog-mode-hook 'eglot-ensure))

(provide 'init-eglot)
;;; init-eglot.el ends here
