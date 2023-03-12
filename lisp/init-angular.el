(package-install 'ng2-mode)

(defun angularServerPath()
  (concat
   (string-replace "/bin/node" ""
                   (executable-find "node"))
   "/lib/node_modules/@angular/language-server"))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               `(ng2-ts-mode "node"
                              ,(angularServerPath)
                              "--ngProbeLocations"
                              ,(angularServerPath)
                              "--tsProbeLocations"
                              ,(angularServerPath)
                              "--stdio")))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               `(ng2-html-mode "node"
                              ,(angularServerPath)
                              "--ngProbeLocations"
                              ,(angularServerPath)
                              "--tsProbeLocations"
                              ,(angularServerPath)
                              "--stdio")))

(provide 'init-angular)
;;; init-angular.el ends here
