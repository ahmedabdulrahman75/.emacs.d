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

;; autopair
(autopair-global-mode)

;; treemacs
(global-set-key [f8] 'treemacs)

;; switch window
(global-set-key (kbd "C-x o") 'switch-window)
(setq switch-window-shortcut-style 'qwerty) ;;using (a-z) instead of (1-9)

;; yasnippet
(yas-global-mode 1)

;; helm mode
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; idle highlight mode
;; (add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))

;; tabbar-mode
(global-set-key (kbd "<C-right>")  'tabbar-forward)
(global-set-key (kbd "<C-left>")  'tabbar-backward)

;; Drag Stuff
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

;; flyspell correct helm
(require 'flyspell-correct-helm)
(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-wrapper)

;; hungry delete
(global-hungry-delete-mode)

;; enable yasnippet with company mode
(defun autocomplete-show-snippets ()
  "Show snippets in autocomplete popup."
  (let ((backend (car company-backends)))
    (unless (listp backend)
      (setcar company-backends `(,backend :with company-yasnippet company-files)))))
;; See http://www.gnu.org/software/emacs/manual/html_node/emacs/Hooks.html
;; for what this line means
(add-hook 'after-change-major-mode-hook 'autocomplete-show-snippets)

;; tabbar-ruler
(tabbar-ruler-move)
