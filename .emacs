(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)



(defun my/racer-mode-hook ()
  (ac-racer-setup))
(add-hook 'racer-mode-hook 'my/racer-mode-hook)

;;(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
;;(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;;(setq company-tooltip-align-annotations t)

;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(inhibit-startup-screen t)
 ;;'(racer-cmd (expand-file-name "~/src/racer/target/release/racer"))
 ;;'(racer-rust-src-path (expand-file-name "~/src/rustc/src")))



(require 'monokai-theme)
(require 'yafolding)


(require 'go-mode)
(require 'auto-complete)

;; go get -u github.com/mdempsky/gocode
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

;; go get golang.org/x/tools/cmd/goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))

(defvar yafolding-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<C-S-return>") #'yafolding-hide-parent-element)
    (define-key map (kbd "<C-M-return>") #'yafolding-toggle-all)
    (define-key map (kbd "<C-return>") #'yafolding-toggle-element)
    map))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (yafolding go-imports go-complete ac-racer company arduino-mode processing-mode company-terraform treemacs racer monokai-theme go-fill-struct go-autocomplete flymake-rust flycheck-rust company-racer company-go))))
