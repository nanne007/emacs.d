;;; pacakge --- summary
;;; Commentary:
;; ruby mode config

;;; Code:
;; (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;; (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(dolist (spec '(("\\.rb$" . ruby-mode)
                ("[vV]agrantfile$" . ruby-mode)
                ("[gG]emfile$" . ruby-mode)
                ("[pP]uppetfile$" . ruby-mode)
                ("\\.rake$" . ruby-mode)
                ("\\.rabl$" . ruby-mode)
                ("Procfile$" . enh-ruby-mode)
                ("[cC]apfile$" . ruby-mode)
                ("\\.gemspec$" . ruby-mode)
                ("\\.builder$" . ruby-mode)))
  (add-to-list 'auto-mode-alist spec))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq ruby-align-to-stmt-keywords t)
             (outline-minor-mode)
             (setq outline-regexp
                   " *\\(def \\|class\\|module\\|describe \\|it \\)")
             (yard-mode)
             (eldoc-mode)
             (robe-mode)
             (company-mode)
             (push 'company-robe company-backends)))

;;; enables outlining for ruby
;;; You may also want to bind hide-body, hide-subtree, show-substree
;;; show-all, show-children, ... to some keys easy folding and unfolding

;;; 10-ruby.el ends here
