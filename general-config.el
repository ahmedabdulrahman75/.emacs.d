;; stop creating backup~ files
(setq make-backup-files nil)

;; hide welcome page
(setq inhibit-startup-screen t)

;; show column
(setq column-number-mode t)

;; stop beep sound
(setq visible-bell t)

;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)


;; Delete selection mode
(delete-selection-mode 1)

;; enable spell check by default
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; auto refresh all buffers
(global-auto-revert-mode 1)

;; line number in all buffers
(global-linum-mode t)
;; (add-hook 'doc-view-mode-hook (lambda() (linum-mode 0)))

;; show parenthesis matched
(show-paren-mode t)

;; change the highlight color
(set-face-attribute 'region nil :background "#99C4F7")

;; ;; right to left config
;; (defun set-bidi-env ()
;;   "interactive"
;;   (setq bidi-paragraph-direction 'nil))
;; (add-hook 'org-mode-hook 'set-bidi-env)

;; electric pair
(electric-pair-mode 1)

;;Window Move
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; hide tool bar
(tool-bar-mode -1)

;; hide menu bar
(menu-bar-mode -1)

;; python3 shell interpreter
(setq python-shell-interpreter "python3")

;; enable emacs client
(server-force-delete)
(server-start)


;; stop auto indent
;; (electric-indent-mode 0)


;; hide show
(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-set-key (kbd "C-c C-f") 'hs-toggle-hiding)


;; space instead of tabs
(setq-default indent-tabs-mode nil)

;; enable column indicator in prog-mode
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)


;; flymake
(add-hook 'prog-mode-hook 'flymake-mode)

;; recentf-mode
(recentf-mode 1)

;; make ibuffer default
(defalias 'list-buffers 'ibuffer)
