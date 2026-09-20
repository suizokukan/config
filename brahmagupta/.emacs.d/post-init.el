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
(global-set-key (kbd "M-g") 'goto-line)

(global-visual-line-mode 1)

;; Active l'affichage des colonnes et des lignes à l'échelle globale
(column-number-mode 1)
(line-number-mode 1)

;; Modifie le format par défaut de la position dans la mode-line (colonne ligne, indexée à 1)
(setq-default mode-line-position
              '(" (" (:eval (format "%d %d" (1+ (current-column)) (line-number-at-pos))) ")"))

;; Force la mise à jour dynamique de la mode-line à chaque mouvement de curseur
(add-hook 'post-command-hook #'force-mode-line-update)


(global-set-key (kbd "C-<tab>") 'other-window)

; ----------------- auto complétion -----------
;; 1. Installer et activer Corfu (l'interface d'autocomplétion moderne)
(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)                 ;; Activer l'autocomplétion automatique
  (corfu-auto-delay 0.1)         ;; Léger délai avant l'apparition du menu (en secondes)
  (corfu-auto-prefix 1)          ;; Déclencher après 1 caractère saisi
  :init
  (global-corfu-mode))

;; 2. Activer Eglot (LSP) automatiquement dans les fichiers Python
(use-package eglot
  :ensure t
  :hook
  (python-mode . eglot-ensure)      ;; Si vous utilisez le mode Python classique
  (python-ts-mode . eglot-ensure))  ;; Si vous utilisez Tree-Sitter
