;; requirements
(package-install 'web-mode)
(package-install 'company-web)
(package-install 'emmet-mode)

;; web mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

;; some configurations to web mode
;; (setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends)
       '(company-css company-web-html company-yasnippet company-files))
  (setq web-mode-markup-indent-offset 2) ;; set indentation to 2 spaces
  (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "#D0CFCC")
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#2A7BDE")
  (set-face-background 'web-mode-current-element-highlight-face "#E9AD0C")
)

(add-hook 'web-mode-hook  'my-web-mode-hook)

;; enable emmet-mode with web-mode
(add-hook 'web-mode-hook  'emmet-mode)

;; browse url file in browser
(add-hook 'web-mode-hook
          (lambda () (local-set-key (kbd "C-c C-v") #'browse-url-of-file)))
