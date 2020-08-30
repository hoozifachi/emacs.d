;;; init-yasnippet -- Summary
;;; Commentary:
;;; Install and set up go-mode
;;; Code:
(use-package yasnippet
  :config
  (use-package go-snippets)
  (add-hook 'go-mode-hook 'yas-minor-mode))
(yas-reload-all)
(provide 'init-yasnippet)
;;; init-yasnippet ends here
