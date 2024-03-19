;; set default indentation value
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2)))
(use-package eglot-java
  :ensure t
  :after eglot
  :hook (java-mode . eglot-java-mode))

(provide 'init-java)
;;; init-java.el ends here
