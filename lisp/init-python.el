(add-hook 'python-mode-hook
          (lambda ()
            (setq python-indent 4)
            (setq-default tab-width 4)
            (setq python-indent-offset 4)))

(provide 'init-python)
;;; init-python.el ends here
