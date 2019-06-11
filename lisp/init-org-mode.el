;;; init-org-mode -- Summary
;;; Commentary:
;;; Set org-mode option
;;; Code:
(require 'org)
(setq org-log-done 'time)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-agenda-files (list "/home/jason.sweet/org/tasks.org"))
(provide 'init-org-mode)
;;; init-org-mode.el ends here
