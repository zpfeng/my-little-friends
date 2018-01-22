;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Torstein's Emacs minbuffer tweaks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enhanced M-x
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package helm
  :bind
  (("M-x" . helm-M-x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IDO
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package ido
  :init
  (setq ido-everywhere nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-file-extensions-order '(".java" ".js" ".el" ".xml")
        ido-use-filename-at-point 'guess
        ido-use-faces t)

  :config
  (ido-mode 'buffer))

;; Improved flex matching
;; (use-package flx-ido)

;; Vertical completion menu
(use-package ido-vertical-mode
  :init
  (setq ido-vertical-indicator ">>"
        ido-vertical-show-count nil
        ido-vertical-define-keys 'C-n-C-p-up-and-down)
  :config
  (ido-vertical-mode)
  (ido-vertical-mode nil))

(defun tkj-switch-buffer()
  (interactive)
  ;;    (ido-vertical-mode 0)
  (ido-switch-buffer)
  ;; ido-vertical-mode never gets turned on
  ;;    (ido-vertical-mode 1)
  )

;; If not using ido-vertical-mode, make the minibuff stay still,
;; i.e. never change height, set this to nil.
;; (setq resize-mini-windows 'grow-only)

;; IDO support pretty much everwhere, including eclim-java-implement
(use-package ido-completing-read+
  :config
  (ido-ubiquitous-mode))

(global-set-key (kbd "C-x b") 'tkj-switch-buffer)
