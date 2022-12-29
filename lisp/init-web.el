;; requirements
(package-install 'web-mode)
(package-install 'company-web)
(package-install 'emmet-mode)

;; web mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

;; some configurations to web mode
;; (setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

;; web-mode customization
(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends)
       '(company-css company-web-html company-yasnippet company-files))
  (setq web-mode-markup-indent-offset 2) ;; 2 spaces indentation HTML
  (setq web-mode-css-indent-offset 2)  ;; 2 spaces indentation css
  (setq web-mode-code-indent-offset 2) ;; 2 spaces indentation php
  (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "#757575")
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#06356E")
  (set-face-background 'web-mode-current-element-highlight-face "#A79204")
)

(add-hook 'web-mode-hook  'my-web-mode-hook)

;; enable emmet-mode with web-mode
(add-hook 'web-mode-hook  'emmet-mode)

;; browse url file in browser
(add-hook 'web-mode-hook
          (lambda () (local-set-key (kbd "C-c C-v") #'browse-url-of-file)))

;; indent size css

(provide 'init-web)
;;; init-web.el ends here
