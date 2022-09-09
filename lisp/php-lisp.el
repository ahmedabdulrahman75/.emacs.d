;; requirements
(package-install 'php-mode)

;; enable web-mode in php
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

