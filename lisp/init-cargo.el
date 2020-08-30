;;; init-cargo -- Summary
;;; Commentary:
;;; Install and set up cargo
;;; Code:
(use-package cargo
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode))
(provide 'init-cargo)
;;; init-cargo.el ends here
