(package-install 'ng2-mode)

(require 'eglot)
(add-to-list 'eglot-server-programs
             '(ng2-ts-mode "node"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules/@angular/language-server"
                           "--ngProbeLocations"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules"
                           "--tsProbeLocations"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules"
                           "--stdio"))

(add-to-list 'eglot-server-programs
             '(ng2-html-mode "node"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules/@angular/language-server"
                           "--ngProbeLocations"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules"
                           "--tsProbeLocations"
                           "/home/ahmed/.nvm/versions/node/v18.14.1/lib/node_modules"
                           "--stdio"))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(ng2-html-mode "node"
                           "~/.nvm/versions/node/v18.14.1/lib/node_modules/@angular/language-server"
                           "--stdio")))
(provide 'init-angular)
;;; init-angular.el ends here
