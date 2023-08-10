;; Better source code window editing
(setq org-src-window-setup 'other-window)

;; Highlight and indent source code blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-edit-src-content-indentation 0)

;; ;; Highlight quotes
(setq org-fontify-quote-and-verse-blocks t)

;; Enable languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (dot . t)
   (ditaa . t)
   (python . t)
   (C . t)
   (shell . t)
   (js . t)
   (typescript . t)
   (java . t)))

;; Use Web mode for HTML
(add-to-list 'org-src-lang-modes
             '("html" . web))


;; Automatically paste a online link with the description set to the title of the page
(use-package org-cliplink)

;; Don't want to create table of content manually in org mode
(use-package toc-org)

(use-package org-modern
  :config
  (setq org-use-property-inheritance t ;;Might fix some bugs with org mode src block
        org-startup-indented t
        org-confirm-babel-evaluate nil
        org-src-preserve-indentation t
        org-export-preserve-breaks t
        org-log-into-drawer t
        org-link-file-path-type 'relative
        org-ellipsis "  "                                     ;;fun symbols   ,    , 
        org-enforce-todo-checkbox-dependencies t
        org-enforce-todo-dependencies t
        org-auto-align-tags nil
        org-tags-column 0
        org-catch-invisible-edits 'show-and-error
        org-modern-checkbox nil
        org-modern-table nil
        org-insert-heading-respect-content t
        org-hide-emphasis-markers t
        org-pretty-entities t
        org-ellipsis "…")
  (global-org-modern-mode))

(provide 'init-org)
;;; init-org.el ends here
