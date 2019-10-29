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
