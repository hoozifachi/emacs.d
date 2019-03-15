;;; init -- Summary
;;; Commentary:
;;; Initialize Emacs
;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(load "setup-misc")

(load "setup-ui")

(load "setup-utf-8")

(require 'init-use-package)

(use-package all-the-icons)

(require 'init-ivy)
(require 'init-flycheck)
(require 'init-company)
(require 'init-which-key)
(require 'init-smartparens)
(require 'init-neotree)
(use-package find-file-in-project)
;; (require 'bl-nfs)
(require 'init-go-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (neotree find-file-in-project smartparens which-key company flycheck ivy all-the-icons all-the-fonts use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
