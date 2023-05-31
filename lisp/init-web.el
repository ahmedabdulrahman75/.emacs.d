;; requirements
(package-install 'web-mode)
(package-install 'company-web)
(package-install 'emmet-mode)

;; elgot config
(defun html-setup()
  (web-mode)
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
                 '(web-mode . ("vscode-html-language-server" "--stdio")))))

;; web mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-setup))
(add-to-list 'auto-mode-alist '("\\.php\\'" . html-setup))

;; some configurations to css & scss
(setq css-indent-offset 2)
(setq scss-indent-offset 2)

;; web-mode customization
(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends)
       '(company-web-html company-yasnippet company-files))
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-markup-indent-offset 2) ;; 2 spaces indentation HTML
  (setq web-mode-css-indent-offset 2)  ;; 2 spaces indentation css
  (setq web-mode-code-indent-offset 2) ;; 2 spaces indentation php
  (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "#757575")
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#041174")
  (set-face-background 'web-mode-current-element-highlight-face "#917F07")
)

(add-hook 'web-mode-hook  'my-web-mode-hook)

;; enable emmet-mode with web-mode
(add-hook 'web-mode-hook  'emmet-mode)

;; browse url file in browser
(add-hook 'web-mode-hook
          (lambda () (local-set-key (kbd "C-c C-v") #'browse-url-of-file)))


(provide 'init-web)
;;; init-web.el ends here

