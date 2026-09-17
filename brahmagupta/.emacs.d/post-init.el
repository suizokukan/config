;;; post-init.el --- Mes raccourcis personnels

(let ((inhibit-redisplay t))
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme 'deeper-blue t))


;; Copier
(global-set-key (kbd "C-c") #'kill-ring-save)

;; Coller
(global-set-key (kbd "C-v") #'yank)

;; Couper
;; C-x est conservé comme préfixe Emacs, donc on utilise C-x C-x
;; pour couper afin de ne pas casser les raccourcis C-x.
(global-set-key (kbd "C-x C-x") #'kill-region)

;; Sauvegarder le fichier courant
(global-set-key (kbd "C-s") #'save-buffer)

;; Annuler
(global-set-key (kbd "C-z") #'undo)

;; Ouvrir un fichier
(global-set-key (kbd "C-x C-o") #'find-file)

;; Quitter Emacs
(global-set-key (kbd "C-x C") #'save-buffers-kill-emacs)

;; sélectionner tout
(global-set-key (kbd "C-x h") #'mark-whole-buffer)

;; Chercher dans le fichier courant
(global-set-key (kbd "C-s") #'isearch-forward)
