;;; init-neotree -- Summary
;;; Commentary:
;;; Install and set up neotree
(use-package neotree
  :init
  (require 'neotree)
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-smart-open t)
  )
(provide 'init-neotree)
;;; init-neotree.el ends here
