(package-install 'eglot)

(setq read-process-output-max (* 1024 1024))

;; eglot
(add-hook 'prog-mode-hook 'eglot-ensure)


(provide 'init-eglot)
;;; init-eglot.el ends here
