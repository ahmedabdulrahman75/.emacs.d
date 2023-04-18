;; modern org
(use-package org-modern
  :ensure t
  :init
  (add-hook 'org-mode-hook #'org-modern-mode))

(provide 'init-org)
;;; init-org.el ends here
