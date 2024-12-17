(use-package company-terraform
  :ensure t
  :after company-mode
  :mode ("\\.tf\\'")
  :init
  (company-terraform-init)
  )

(provide 'init-terraform)
;;; init-terraform.el ends here
