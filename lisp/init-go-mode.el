;;; init-go-mode -- Summary
;;; Commentary:
;;; Install and set up go-mode
;;; Code:
(use-package go-mode
  :config
  (use-package godoctor)
  (defun my-go-mode-hook ()
    (add-hook 'before-save-hook 'gofmt-before-save)
    (setq tab-width 2)
    (setq indent-tabs-mode 1)
    (if (not (string-match "go" compile-command))
	(set (make-local-variable 'compile-command)
	     "go test && go vet"))
    (local-set-key (kbd "C-c C-t") 'compile)
    (local-set-key (kbd "C-c r") 'godoctor-rename)
    (local-set-key (kbd "C-c e") 'godoctor-extract)
    (local-set-key (kbd "C-c t") 'godoctor-toggle)
    (local-set-key (kbd "C-c d") 'godoctor-doc)
    (local-set-key (kbd "C-c C-p r") 'godoctor-rename-dry-run)
    (local-set-key (kbd "C-c C-p e") 'godoctor-extract-dry-run)
    (local-set-key (kbd "C-c C-p t") 'godoctor-toggle-dry-run)
    (local-set-key (kbd "C-c C-p d") 'godoctor-doc-dry-run))
  (add-hook 'go-mode-hook 'my-go-mode-hook))
(provide 'init-go-mode)
;;; init-go-mode.el ends here
