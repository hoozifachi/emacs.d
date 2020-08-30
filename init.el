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
(require 'init-web-mode)
(require 'init-rjsx-mode)
(require 'init-fsharp-mode)
(require 'init-rust-mode)
(require 'init-cargo)
(require 'init-org-mode)		
(require 'init-elisp-mode)
(require 'init-yasnippet)
(use-package kivy-mode)

(require 'ansi-color)1
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (kivy-mode rust-mode go-snippets yasnippet godoctor which-key web-mode use-package smartparens rjsx-mode neotree go-mode fsharp-mode find-file-in-project counsel all-the-icons))))
