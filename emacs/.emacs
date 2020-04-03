(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

(setq inhibit-startup-message t)

(require' tramp)
(setq tramp-default-method "ssh")

(ido-mode 1)

; Fonts
(set-default-font "Liberation Mono 11")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; smex
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

; yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" default)))
 '(package-selected-packages
   (quote
    (ggtags magit org yasnippet yasnippet-snippets rust-mode smex solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

                                        ; All of the C/C++ stuff
(require 'ggtags)
(defun cpp-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatment-open 0)
  (setq-default indent-tabs-mode nil)
  (ggtags-mode 1))
(add-hook 'c++-mode-hook 'cpp-hook)
