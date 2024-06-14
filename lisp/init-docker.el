(use-package dockerfile-mode
  :ensure t
  :after eglot
  :mode ("\\Dockerfile\\'")
  :config (add-hook 'dockerfile-mode-hook 'eglot-ensure))

(provide 'init-docker)
;;; init-docker.el ends here
