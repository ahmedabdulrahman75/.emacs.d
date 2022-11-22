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
(package-install 'format-all)
(package-install 'mode-icons)
(package-install 'all-the-icons)
(package-install 'centaur-tabs)
(package-install 'doom-modeline)
(package-install 'magit)
(package-install 'multiple-cursors)
(package-install 'editorconfig)
(package-install 'ivy)
(package-install 'counsel)
(package-install 'swiper)
(package-install 'switch-window)
(package-install 'eglot)
;; (package-install 'fill-column-indicator)
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

;; ;; idle highlight mode
;; (add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))


;; Drag Stuff
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;; ;; flyspell correct helm
;; (require 'flyspell-correct-helm)
;; (define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-wrapper)


;; enable yasnippet with company mode
(defun autocomplete-show-snippets ()
  "Show snippets in autocomplete popup."
  (let ((backend (car company-backends)))
    (unless (listp backend)
      (setcar company-backends `(,backend :with company-yasnippet company-files)))))
;; See http://www.gnu.org/software/emacs/manual/html_node/emacs/Hooks.html
;; for what this line means
(add-hook 'after-change-major-mode-hook 'autocomplete-show-snippets)

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

;; editorconfig
(editorconfig-mode 1)

;; ivy
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
(setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


;; switch-window
(global-set-key (kbd "C-x o") 'switch-window)
(setq switch-window-shortcut-style 'qwerty)


;; eglot
(add-hook 'prog-mode-hook 'eglot-ensure)

;; format-all
(global-set-key [f4] 'format-all-buffer)

(provide 'global-lisp)
;;; global-lisp.el ends here
