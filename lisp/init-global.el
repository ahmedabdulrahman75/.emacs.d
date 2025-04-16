;; vscode dark them
(use-package vscode-dark-plus-theme
  :ensure t
  :config
  (load-theme 'vscode-dark-plus t))

;; exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; which key mode
(which-key-mode)

;; company mode
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :bind ("C-'" . company-complete)
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.7
        company-dabbrev-downcase nil))


;; company quick help
(use-package company-quickhelp
  :ensure t
  :config
  (company-quickhelp-mode 1)
  (setq company-quickhelp-color-background "#303030")
  (setq company-quickhelp-color-foreground "#D0CFCC"))

;; treemacs
(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-indentation  1)
    ;; (treemacs-indent-guide-mode t)
    )
  :bind
  (("M-0" . treemacs-select-window)))

(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)


;; yasnippet
(yas-global-mode 1)

;; Drag Stuff
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)


;; enable yasnippet with company mode
(defun autocomplete-show-snippets ()
  "Show snippets in autocomplete popup."
  (let ((backend (car company-backends)))
    (unless (listp backend)
      (setcar company-backends `(,backend :with company-yasnippet company-files)))))
;; See http://www.gnu.org/software/emacs/manual/html_node/emacs/Hooks.html
;; for what this line means
(add-hook 'after-change-major-mode-hook 'autocomplete-show-snippets)


;; company restclient
(add-to-list 'company-backends 'company-restclient)

;; indent guide
(indent-guide-global-mode)


;; mode-icons
(mode-icons-mode 1)

;; all-the-icons
(when (display-graphic-p)
  (require 'all-the-icons))

;; doom-modeline
(use-package doom-modeline
  :config
  (doom-modeline-mode 1))

;;centaur tabs
(use-package centaur-tabs
  :demand t
  :defines centaur-tabs-excluded-prefixes
  :commands (centaur-tabs-mode centaur-tabs-headline-match centaur-tabs-group-by-projectile-project)
  :init
  (setq centaur-tabs-style                    "bar"
        centaur-tabs-set-bar                  'under
        centaur-tabs-height                   32
        centaur-tabs-set-icons                t
        centaur-tabs-show-new-tab-button      t
        centaur-tabs-set-modified-marker      t
        centaur-tabs-show-navigation-buttons  t
        centaur-tabs-show-count               t
        x-underline-at-descent-line           t)
  :config
  (centaur-tabs-mode)
  ;; (custom-set-faces
  ;;  '(centaur-tabs-default ((t (:background "white" :foreground "black"))))
  ;;  '(centaur-tabs-selected ((t (:background "white" :foreground "black" :box (:line-width 2 :color "white")))))
  ;;  '(centaur-tabs-unselected ((t (:background "white" :foreground "gray" :box (:line-width 2 :color "white")))))
  ;;  '(centaur-tabs-selected-modified ((t (:background "white" :foreground "blue" :box (:line-width 2 :color "white")))))
  ;;  '(centaur-tabs-unselected-modified ((t (:background "white" :foreground "blue" :box (:line-width 2 :color "white"))))))
  (centaur-tabs-headline-match)
  (centaur-tabs-group-by-projectile-project)
  (global-set-key (kbd "C-{")  'centaur-tabs-backward)
  (global-set-key (kbd "C-}") 'centaur-tabs-forward)
  (global-set-key (kbd "C-<left>") 'centaur-tabs-move-current-tab-to-left)
  (global-set-key (kbd "C-<right>") 'centaur-tabs-move-current-tab-to-right)
  (dolist
      (excluded-prefixes
       '( " *" "*Org Agenda*" "*Org Note*" "*Org Select*" "*Capture*" "*Calendar*" "*Flymake diagnostics" "*Kill Ring*"
          "*flycheck-posframe-buffer*" "*Shell Command Output*" "*dashboard*" "*Directory*" "*vterm*" "*compilation*"
          "magit:" "magit-" "*vc*" "*"))
    (add-to-list 'centaur-tabs-excluded-prefixes excluded-prefixes)))

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

;; format-all
(global-set-key (kbd "C-S-i") 'format-all-buffer)

;; all-the-icons-ivy-rich
(all-the-icons-ivy-rich-mode 1)

;; ivy-rich
(ivy-rich-mode 1)

;; dotenv mode
(add-to-list 'auto-mode-alist '("\\.env\\..*\\'" . dotenv-mode))

;; dashboard
(use-package dashboard
  :after all-the-icons
  :init
  (setq dashboard-items '((recents  . 5)
                          (projects . 5)
                          (agenda . 5)))
  (setq dashboard-set-heading-icons t
        dashboard-projects-backend 'project-el
        dashboard-startup-banner 'official
        dashboard-banner-logo-title ""
        dashboard-image-banner-max-height 500
        dashboard-set-footer nil
        dashboard-set-file-icons t
        dashboard-set-init-info t)
  (dashboard-setup-startup-hook))

;; blamer
(use-package blamer
  :ensure t
  :bind (("C-c i" . blamer-show-posframe-commit-info))
  )

;; ;; aggressive-indent
;; (use-package aggressive-indent
;;   :config
;;   (global-aggressive-indent-mode 1))

;; eldoc-box
;; (use-package eldoc-box
;;   :init
;;   (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode t)
;;   :config
;;   (setq x-gtk-resize-child-frames 'resize-mode))


;; git gutter
(use-package git-gutter
  :hook (prog-mode . git-gutter-mode)
  :config
  (setq git-gutter:update-interval 0.02))

(use-package git-gutter-fringe
  :config
  (define-fringe-bitmap 'git-gutter-fr:added [255] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:modified [255] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:deleted [255 255 255 255] nil nil 'bottom))


;; we recommend using use-package to organize your init.el

(provide 'init-global)
;;; init-global.el ends here
