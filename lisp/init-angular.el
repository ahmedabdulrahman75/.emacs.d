(package-install 'ng2-mode)

(require 'eglot)
(add-to-list 'eglot-server-programs
             '(ng2-ts-mode "node"
                           "/home/ahmed/versions/node/v18.14.0/lib/node_modules/@angular/language-server/bin/ngserver"
                           "--stdio"))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(ng2-html-mode "node"
                           "~/.nvm/versions/node/v18.14.0/lib/node_modules/@angular/language-server"
                           "--stdio")))
(provide 'init-angular)
;;; init-angular.el ends here
