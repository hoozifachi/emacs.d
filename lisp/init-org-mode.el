;;; init-org-mode -- Summary
;;; Commentary:
;;; Set org-mode option
;;; Code:
(require 'org)
(setq org-log-done 'time)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-agenda-files '("~/org/inbox.org"
			 "~/org/gtd.org"
			 "~/org/tickler.org"))

(setq org-modules '(org-habit))
(eval-after-load 'org
  '(org-load-modules-maybe t))

(setq org-hide-leading-stars t)
(setq org-startup-indented t)
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/org/inbox.org" "Tasks")
			       "* TODO %i%?")
			      ("T" "Tickler" entry
			       (file+headline "~/org/tickler.org" "Tickler")
			       "+ %i%? \n %U")))

;; Set refile targets
(setq org-refile-targets '(("~/org/gtd.org" :maxlevel . 3)
			   ("~/gtd/someday.org" :level . 1)
			   ("~/org/tickler.org" :maxlevel . 2)))

;; Set to keywords
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING (w)" "|" "DONE(d)" "CANCELLED(c)")))

;; Open org file and agenda
(find-file "~/org/gtd.org")
(org-agenda nil "a")

;; ivy hijacked it
(global-set-key (kbd "C-c C-R") 'org-reveal)

;; agenda formatting
(setq org-agenda-tags-column 85)

(provide 'init-org-mode)
;;; init-org-mode.el ends here
