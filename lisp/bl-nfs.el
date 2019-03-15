;;; bl-nfs -- Summary
;;; Commentary:
;;; Set up neotree to open at git root
;;; Code:
(global-set-key [f8] 'neotree-project-dir)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
    (file-name (buffer-file-name)))
    (if project-dir
    (progn
      (neotree-dir project-dir)
      (neotree-find file-name))
      (message "Could not find git project root."))))

(provide 'bl-nfs)

(global-set-key (kbd "C-c q") (lambda ()
				(interactive)
				(other-window -1)))
;;; bl-nfs.el ends here
