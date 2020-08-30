;;; init-rust-mode -- Summary
;;; Commentary:
;;; Install and set up go-mode
;;; Code:
(use-package rust-mode
  :config
  (add-hook 'rust-mode-hook
	    (lambda () (setq indent-tabs-mode nil)))
  (setq rust-format-on-save t)
  (define-key rust-mode-map (kbd "C-c C-c") 'rust-run))

(provide 'init-rust-mode)
;;; init-rust-mode.el ends here
