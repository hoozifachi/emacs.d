;;;
;;; Initialize packages
;;;   From http://stackoverflow.com/a/10093312
;;;

; list the packages you want
(setq package-list
      '(
	web-mode
	yasnippet
	angular-snippets
	zencoding-mode
	))

; list the repositories containing them
(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")
	("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;;
;;; General configuration
;;; 
(setq indent-tabs-mode nil)      ; force use of spaces
(setq inhibit-startup-message t) ; don't show welcome screen
(ido-mode t)                     ; activate ido mode
(tool-bar-mode -1)               ; turn off toolbar

;;;
;;; web-mode configuration
;;;
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-auto-expanding t)


;;;
;;; Yasnippet configuration
;;;
(yas-global-mode 1)


;;;
;;; zencoding-mode configuration
;;;
(add-hook 'sgml-mode-hook 'zencoding-mode)   ; start on any markup modes
(add-hook 'web-mode-hook 'zencoding-mode)   ; start on any markup modes


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(yas-prompt-functions (quote (yas-ido-prompt yas-dropdown-prompt yas-completing-prompt yas-x-prompt yas-no-prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
