;;; init-company -- Summary
;;; Commentary:
;;; Download and setup company package.
;;; Code:
(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))
(provide 'init-company)
;;; init-company.el ends here
