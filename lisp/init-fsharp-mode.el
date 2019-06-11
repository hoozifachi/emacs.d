;;; init-fsharp-mode -- Summary
;;; Commentary:
;;; Install and set up fsharp-mode
;;; Code:
(use-package fsharp-mode
  :config
  (defun my-fsharp-mode-hook ()
    (add-hook 'fsharp-mode-hook #'smartparens-mode))
  (add-hook 'go-mode-hook 'my-go-mode-hook))
(provide 'init-fsharp-mode)
;;; init-fsharp-mode.el ends here
