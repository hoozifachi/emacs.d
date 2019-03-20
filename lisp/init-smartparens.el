;;; init-smartparens -- Summary
;;; Commentary:
;;; Install and set up smart parens
;;; Code:
(use-package smartparens
  :config
  (require 'smartparens-config)
  (add-hook 'lisp-mode-hook #'smartparens-strict-mode)
  (add-hook 'js-mode-hook #'smartparens-mode)
  (add-hook 'go-mode-hook #'smartparens-mode))
(provide 'init-smartparens)
;;; init-smartparens.el ends here
