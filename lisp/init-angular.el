(package-install 'ng2-mode)

(add-to-list 'auto-mode-alist '("\\.component.html\\'" . ng2-mode))
(add-hook 'ng2-html-mode-hook  'emmet-mode)

(defun angularServerPath()
  (concat
   (string-replace "/bin/node" ""
                   (executable-find "node"))
   "/lib/node_modules/@angular/language-server"))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               `(ng2-html-mode "node"
                              ,(angularServerPath)
                              "--ngProbeLocations"
                              ,(angularServerPath)
                              "--tsProbeLocations"
                              ,(angularServerPath)
                              "--stdio")))


(add-hook 'ng2-html-mode-hook 'eglot-ensure)

(provide 'init-angular)
;;; init-angular.el ends here
