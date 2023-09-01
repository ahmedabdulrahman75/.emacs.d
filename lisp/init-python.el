;; py-autopep8
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(require 'python-mode)

;; pyvenv
(use-package pyvenv
  :ensure t
  :config
  (pyvenv-activate "~/workspace/python/venv/"))


;; set default indentation value
(add-hook 'python-mode-hook '(lambda () 
 (setq python-indent 4)))

(provide 'init-python)
;;; init-python.el ends here
