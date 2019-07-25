;; stop creating backup~ files
(setq make-backup-files nil)

;; hide welcome page
(setq inhibit-startup-screen t)

;; smart inference of indentation style
(defun infer-indentation-style ()
  ;; if our source file uses tabs, we use tabs, if spaces spaces, and if        
  ;; neither, we use the current indent-tabs-mode                               
  (let ((space-count (how-many "^  " (point-min) (point-max)))
        (tab-count (how-many "^\t" (point-min) (point-max))))
    (if (> space-count tab-count) (setq indent-tabs-mode nil))
    (if (> tab-count space-count) (setq indent-tabs-mode t))))

;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil) 
