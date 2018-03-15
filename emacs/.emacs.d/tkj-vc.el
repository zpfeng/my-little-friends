;; VC related changes, also see tkj-p4.el for p4 specific changes

;; Remove the 'Git-' prefix from the modeline when displaying the
;; current branch.
(setcdr (assq 'vc-mode mode-line-format)
        '((:eval (replace-regexp-in-string "^ Git-" " " vc-mode))))


;; Ignore white space when running annotate to see who introduced
;; actual code changes.
(setq vc-git-annotate-switches '("-w"))

;; Move between local changes
(global-set-key (kbd "M-<up>") 'git-gutter+-previous-hunk)
(global-set-key (kbd "M-<down>") 'git-gutter+-next-hunk)

;; Customise the magit log view
(setq magit-log-arguments '("-n256"
                            "--graph"
                            "--decorate"
                            "--color")
      ;; Show diffs per word, looks nicer!
      magit-diff-refine-hunk t

      ;; Easy switching between all repositories I'm working on
      magit-repository-directories (list "~/src")

      ;; Follow symlinks when opening files.
      vc-follow-symlinks t)
