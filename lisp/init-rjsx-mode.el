;;; init-rjsx-mode -- Summary
;;; Commentary:
;;; Install and setup rjsx-mode
;;; Code:
(use-package rjsx-mode
  :config
  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode)))
(provide 'init-rjsx-mode)
;;; init-rjsx-mode.el ends here
