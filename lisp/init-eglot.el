(setq read-process-output-max (* 1024 1024))

;; eglot


(use-package eglot
  :ensure t
  :config
  (setq eglot-confirm-server-initiated-edits nil)
  
  (add-to-list 'eglot-server-programs
               '(python-mode . ("jedi-language-server")))
  
  (add-hook 'prog-mode-hook 'eglot-ensure))

(provide 'init-eglot)
;;; init-eglot.el ends here
