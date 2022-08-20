;; requirements 
(package-install 'which-key)
(package-install 'yasnippet)
(package-install 'company)
(package-install 'company-quickhelp)
(package-install 'markdown-mode)
(package-install 'markdown-preview-mode)
(package-install 'impatient-mode)
(package-install 'treemacs)
(package-install 'yasnippet-snippets)
(package-install 'drag-stuff)
(package-install 'indent-guide)
(package-install 'prettier)
(package-install 'helm)
(package-install 'mode-icons)
(package-install 'all-the-icons)
(package-install 'centaur-tabs)
(package-install 'doom-modeline)
(package-install 'magit)
(package-install 'multiple-cursors)
;; (package-install 'hungry-delete)
;; (package-install 'fill-column-indicator)
;; (package-install 'flyspell-correct-helm)
;; (package-install 'idle-highlight-mode)

;; ;; fill-column-indicator
;; (define-globalized-minor-mode my-global-fci-mode fci-mode turn-on-fci-mode)
;; (my-global-fci-mode 1)

;; which key mode
(which-key-mode)

;; company mode
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "C-<tab>") 'company-complete) ; show completion suggestions by using tab key
;; some improvement to company mode
(setq company-minimum-prefix-length 1)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

;; company quick help
(company-quickhelp-mode)

;; treemacs
(global-set-key [f8] 'treemacs)

;; yasnippet
(yas-global-mode 1)

;; helm mode
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

;; ;; idle highlight mode
;; (add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))


;; Drag Stuff
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;; ;; flyspell correct helm
;; (require 'flyspell-correct-helm)
;; (define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-wrapper)

;; hungry delete
;; (global-hungry-delete-mode)

;; enable yasnippet with company mode
(defun autocomplete-show-snippets ()
  "Show snippets in autocomplete popup."
  (let ((backend (car company-backends)))
    (unless (listp backend)
      (setcar company-backends `(,backend :with company-yasnippet company-files)))))
;; See http://www.gnu.org/software/emacs/manual/html_node/emacs/Hooks.html
;; for what this line means
(add-hook 'after-change-major-mode-hook 'autocomplete-show-snippets)


;; ;; hide show
;; (add-hook 'prog-mode-hook #'hs-minor-mode)
;; (global-set-key (kbd "C-c <right>") 'hs-show-block)
;; (global-set-key (kbd "C-c <left>") 'hs-hide-block)

;; indent guide
(indent-guide-global-mode)


;; mode-icons
(mode-icons-mode 1)

;; all-the-icons
(when (display-graphic-p)
  (require 'all-the-icons))

;;centaur tabs
(centaur-tabs-mode t)
(global-set-key (kbd "<C-left>")  'centaur-tabs-backward)
(global-set-key (kbd "<C-right>") 'centaur-tabs-forward)
(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-show-navigation-buttons t)
(centaur-tabs-group-by-projectile-project)

;; doom-modeline
(doom-modeline-mode 1)

;; multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
