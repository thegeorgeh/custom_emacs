(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; (dolist (package '(use-package))
;;   (unless (package-installed-p package)
;;     (package-install package))
;;   (require package))
;; (use-package paredit :ensure t)

(dolist (package-hello '(arduino-mode company monokai-theme processing-mode treemacs use-package yafolding))
  (unless (package-installed-p package-hello)
    (package-install package-hello))
  (require package-hello))

(add-hook 'after-init-hook (lambda () (load-theme 'monokai)))
(add-hook 'prog-mode-hook (lambda () (yafolding-mode)))

(defvar yafolding-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<C-S-return>") #'yafolding-hide-parent-element)
    (define-key map (kbd "<C-M-return>") 'yafolding-toggle-all)
    (define-key map (kbd "<C-return>") #'yafolding-toggle-element)
    map))
;;(ql:update-dist "quickslip")
(yafolding-toggle-all)
;;('C-return')

;;-----------------------------------------------------------------------------------------------------------------

;;-------------------------------- GO PACKAGES --------------------------------------------------
;; (dolist (package-go '(company-go go-autocomplete go-complete go-fill-struct go-imports go-mode))
;;   (unless (package-installed-p package)
;;     (package-install package))
;;   (require package))

;; go get -u github.com/mdempsky/gocode
;; go get golang.org/x/tools/cmd/goimports
;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)


;;-------------------------------- PYTHON PACKAGES ----------------------------------------
;; (dolist (package-python '(flycheck-pycheckers company-jedi importmagic jedi python-mode))
;;   (unless (package-installed-p package-python)
;;     (package-install package-python))
;;   (require package-python))

;;-------------------------------- RUST PACKAGES ------------------------------
;;(dolist (package-rust '(ac-racer company-racer flycheck-rust racer rust-mode))
;;  (unless (package-installed-p package-rust)
;;    (package-install package-rust))
;;  (require package-rust))
;; (defun my/racer-mode-hook ()
;;   (ac-racer-setup))
;; (add-hook 'racer-mode-hook 'my/racer-mode-hook)


;;-------------------- CLOUD PACKAGES ----------------------
;;(dolist (package-cloud '(company-terraform terraform-mode))
;;  (unless (package-installed-p package-cloud)
;;    (package-install package-cloud))
;;  (require package-cloud))
			      
;;---------------------------------------------------------------------------------------------


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(put 'upcase-region 'disabled nil)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8b58ef2d23b6d164988a607ee153fd2fa35ee33efc394281b1028c2797ddeebb" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(elpy hydra monokai-theme company importmagic lv ace-window)))
