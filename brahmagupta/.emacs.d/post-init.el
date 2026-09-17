;;; post-init.el --- Mes raccourcis personnels

(let ((inhibit-redisplay t))
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme 'tsdh-dark t))


;; Activer le mode CUA pour utiliser C-c (copier), C-v (coller), C-x (couper) et C-z (annuler)
(cua-mode t)

;; Conserver le comportement standard de C-x comme préfixe tout en permettant la sélection/copie standard
(setq cua-keep-region-after-copy t)

;; Sauvegarder le fichier courant
(global-set-key (kbd "C-x s") #'save-buffer)

;; Ouvrir un fichier
(global-set-key (kbd "C-x C-o") #'find-file)

;; Quitter Emacs
(global-set-key (kbd "C-x C") #'save-buffers-kill-emacs)

;; sélectionner tout
(global-set-key (kbd "C-x h") #'mark-whole-buffer)

;; Chercher dans le fichier courant
(global-set-key (kbd "C-s") #'isearch-forward)

(global-display-line-numbers-mode t)
