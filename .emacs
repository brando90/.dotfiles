;; Open .v files with Proof General's Coq mode
(load "~/.emacs.d/lisp/PG/generic/proof-site")

(add-to-list 'load-path "~/evil")
(require 'evil)
(evil-mode 1)

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-dusk)
     (when (display-graphic-p)
       ;; settings for GUI emacs
       (add-to-list 'default-frame-alist '(background-color . "#282B35"))
       (add-to-list 'default-frame-alist '(foreground-color . "White"))
       (set-frame-font "Inconsolata 18" nil t))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
