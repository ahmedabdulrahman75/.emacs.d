;; requirements
(package-install 'py-autopep8)
(package-install 'pyvenv)

;; py-autopep8
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; pyvenv 
(pyvenv-activate "~/workspace/python/venv/")

;; set default indentation value
;; (add-hook 'python-mode-hook '(lambda () 
;;  (setq python-indent 4)))

(provide 'python-lisp)
;;; python-lisp.el ends here
