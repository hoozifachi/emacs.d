;;; init-go-mode -- Summary
;;; Commentary:
;;; Install and set up go-mode
;;; Code:
(use-package go-mode
  :config
  (defun my-go-mode-hook ()
    (add-hook 'before-save-hook 'gofmt-before-save)
    (setq tab-width 2)
    (setq indent-tabs-mode 1)
    (if (not (string-match "go" compile-command))
	(set (make-local-variable 'compile-command)
	     "go test && go vet"))
    (local-set-key (kbd "C-c C-t") 'compile))
  (add-hook 'go-mode-hook 'my-go-mode-hook))
(provide 'init-go-mode)
;;; init-go-mode.el ends here
