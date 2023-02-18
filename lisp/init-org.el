;; Better source code window editing
(setq org-src-window-setup 'other-window)

;; Highlight and indent source code blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-edit-src-content-indentation 0)

;; Highlight quotes
(setq org-fontify-quote-and-verse-blocks t)

;; Enable languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (dot . t)
   (ditaa . t)
   (python . t)
   (C . t)
   (rust . t)
   (shell . t)
   (javascript . t)))

;; Use Web mode for HTML
(add-to-list 'org-src-lang-modes
             '("html" . web))
