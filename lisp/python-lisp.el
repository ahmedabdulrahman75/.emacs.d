;; requirements
;; (package-install 'company-jedi)
(package-install 'py-autopep8)

;; py-autopep8
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; set default indentation value
;; (add-hook 'python-mode-hook '(lambda () 
;;  (setq python-indent 4)))
