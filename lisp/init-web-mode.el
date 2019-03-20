;;; init-web-mode -- Summary
;;; Commentary:
;;; Install and configure web-mode
;;; Code:
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (setq web-mode-enable-auto-closing t)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-auto-expanding t))
(provide 'init-web-mode)
;;; init-web-mode.el ends here
