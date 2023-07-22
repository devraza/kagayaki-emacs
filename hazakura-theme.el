;;; hazakura-theme.el --- The soft yet colorful theme for Emacs.
;;; Commentary:
;;
;; This theme does it's best to make Emacs look beautiful,
;; as with every other theme you will ever see.
;; One way it does this by making colours stick out, by maintaining
;; a stark contrast between foreground and background.
;;
;; Try it out!
;;
;;; Code:

(deftheme hazakura
  "The soft yet colourful theme for Emacs.")

(let ((class '((class color) (min-colors 89)))
      (fg "#ece5ea")
      (fg-dark "#5c5c61")
      (fg-dark-alt "#454449")
      (bg "#151517")
      (bg-dark "#151517")
      (bg-light "#27272b")
      (selection "#242426")
      (highlight "#5c5c61")
      (comment "#454449")
      (hazakura-red "#f06969")
      (hazakura-green "#91d65c")
      (hazakura-purple "#a292e8")
      (hazakura-blue "#78b9c4")
      (hazakura-magenta "#e887bb")
      (hazakura-yellow "#d9d564")
      (hazakura-cyan "#7ee6ae"))

(custom-theme-set-faces
 'hazakura
 `(default ((,class :foreground ,fg :background ,bg)))
 `(link ((,class :foreground ,hazakura-cyan :underline t)))
 `(region ((,class :background ,selection)))
 `(highlight ((,class :background ,bg-light)))
 `(help-key-binding ((,class :background ,bg :foreground ,hazakura-magenta :slant italic)))
 `(font-lock-keyword-face ((,class :foreground ,hazakura-purple :slant italic)))
 `(show-paren-match ((,class :foreground ,hazakura-magenta :weight bold :underline t)))
 `(show-paren-mismatch ((,class :foreground ,hazakura-red :weight bold)))
 `(line-number ((,class :foreground ,comment :background ,bg :slant italic)))
 `(line-number-current-line ((,class :foreground ,hazakura-magenta :background ,bg :weight bold :slant italic)))
 `(font-lock-variable-name-face ((,class :foreground ,hazakura-yellow)))
 `(font-lock-warning-face ((,class :foreground ,hazakura-yellow)))
 `(completions-common-part ((,class :foreground ,hazakura-purple)))
 `(completions-first-difference ((,class :foreground ,fg)))
 `(font-lock-constant-face ((,class :foreground ,hazakura-green)))
 `(font-lock-string-face ((,class :foreground ,hazakura-green)))
 `(font-lock-builtin-face ((,class :foreground ,hazakura-blue)))
 `(error ((,class :foreground ,hazakura-red)))
 `(font-lock-type-face ((,class :foreground ,hazakura-red)))
 `(font-lock-comment-face ((,class :foreground ,comment)))
 `(secondary-selection ((,class :foreground ,highlight)))

 ;; Isearch
 `(isearch ((,class :foreground ,hazakura-green :background ,bg-light :weight bold :underline t)))
 `(isearch-fail ((,class :foreground ,hazakura-red :weight bold)))

 ;; Modeline
 `(mode-line ((,class :background bg-light)))

 ;; NANO-modeline
 `(nano-modeline-active ((,class :box () :foreground ,fg :background ,bg-light)))
 `(nano-modeline-inactive ((,class :box () :foreground ,highlight :background ,bg-light)))
 `(nano-modeline-status ((,class :foreground ,fg :background ,hazakura-purple :weight bold)))

 ;; Bespoke modeline
 `(bespoke-modeline-active-status-** ((,class :foreground ,fg :background ,hazakura-blue :weight bold)))
 `(bespoke-modeline-active-status-RW ((,class :foreground ,fg :background ,hazakura-purple :weight bold)))
 `(bespoke-modeline-active-status-RO ((,class :foreground ,fg :background ,hazakura-magenta :weight bold)))
 `(bespoke-modeline-inactive ((,class :background ,bg-light :foreground ,highlight)))
 `(bespoke-modeline-inactive-name ((,class :background ,bg-light :foreground ,highlight)))
 `(bespoke-modeline-inactive-primary ((,class :background ,bg-light :foreground ,highlight)))
 `(bespoke-modeline-inactive-secondary ((,class :background ,bg-light :foreground ,highlight)))

 ;; Window
 `(window-divider ((,class :foreground ,bg :background ,bg)))
 `(window-divider-first-pixel ((,class :foreground ,bg :background ,bg)))
 `(window-divider-last-pixel ((,class :foreground ,bg :background ,bg)))

 ;; Fringe
 `(fringe ((,class :background ,bg :foreground ,bg)))

 ;; Org mode
 `(org-code ((,class :foreground ,fg-dark)))
 `(org-block ((,class :foreground ,fg-dark)))
 `(org-ellipsis ((,class :foreground ,fg-dark-alt :weight bold)))
 `(org-headline-done ((,class :foreground ,fg)))
 `(org-checkbox ((,class :foreground ,hazakura-magenta)))
 `(org-todo ((,class :foreground ,hazakura-cyan :slant normal)))
 `(org-done ((,class :foreground ,hazakura-green :slant normal)))
 `(org-meta-line ((,class :foreground ,fg-dark-alt)))
 `(org-link ((,class :foreground ,hazakura-green :underline t :weight bold)))
 `(org-drawer ((,class :foreground ,comment)))
 `(org-date ((,class :foreground ,hazakura-magenta)))
 `(org-table ((,class :foreground ,hazakura-cyan)))
 `(org-special-keyword ((,class :foreground ,fg)))
 `(org-document-info-keyword ((,class :foreground ,hazakura-green)))
 `(org-list-dt ((,class :foreground ,hazakura-red)))
 `(org-level-1 ((,class :foreground ,hazakura-purple :weight bold)))
 `(org-level-2 ((,class :foreground ,hazakura-cyan :weight bold)))
 `(org-level-3 ((,class :foreground ,hazakura-green :weight bold)))
 `(org-level-4 ((,class :weight bold)))
 `(org-level-5 ((,class :weight bold)))
 `(org-level-6 ((,class :weight bold)))
 `(org-level-7 ((,class :weight bold)))
 `(org-level-8 ((,class :weight bold)))
 `(org-document-info ((,class :foreground ,fg-dark)))

 ;; Org Superstar
 `(org-superstar-item ((,class :foreground ,hazakura-yellow)))
 `(org-superstar-header-bullet ((,class :foreground ,hazakura-magenta :slant normal)))

 ;; Markdown
 `(markdown-code-face ((,class :inherit default :foreground ,hazakura-purple)))
 `(markdown-header-face ((,class :foreground ,hazakura-cyan :weight bold)))

 ;; Vertico
 `(vertico-current ((,class :background ,bg-light)))

 ;; Minibuffer prompt
 `(minibuffer-prompt ((,class :foreground ,hazakura-green)))

 ;; Orderless
 `(orderless-match-face-0 ((,class :foreground ,hazakura-purple)))
 `(orderless-match-face-1 ((,class :foreground ,hazakura-cyan)))
 `(orderless-match-face-2 ((,class :foreground ,hazakura-green)))
 `(orderless-match-face-3 ((,class :foreground ,hazakura-yellow)))

 ;; which-key
 `(which-key-command-description-face ((,class :foreground ,fg)))

 ;; Dired
 `(diredfl-read-priv ((,class :foreground ,hazakura-yellow)))
 `(diredfl-dir-heading ((,class :foreground ,hazakura-magenta :weight bold)))
 `(diredfl-dir-priv ((,class :foreground ,hazakura-purple)))
 `(diredfl-no-priv ((,class :foreground ,fg-dark)))
 `(diredfl-write-priv ((,class :foreground ,hazakura-red)))
 `(diredfl-exec-priv ((,class :foreground ,hazakura-green)))
 `(diredfl-dir-name ((,class :foreground ,hazakura-magenta)))
 `(diredfl-file-name ((,class :foreground ,fg)))
 `(diredfl-file-suffix ((,class :foreground ,hazakura-yellow)))
 `(diredfl-date-time ((,class :foreground ,hazakura-purple)))

 ;; Evil
 `(evil-ex-info ((,class :foreground ,hazakura-red)))
 `(evil-ex-lazy-highlight ((,class :background ,highlight)))
 `(evil-ex-substitute-matches ((,class :strike-through t :weight bold :foreground ,hazakura-yellow)))
 `(evil-ex-substitute-replacement ((,class :foreground ,hazakura-red :weight bold)))

 ;; Eglot
 `(eglot-highlight-symbol-face ((,class :foreground ,hazakura-purple)))

 ;; Rustic
 `(rustic-compilation-error ((,class :foreground ,hazakura-red)))
 `(rustic-compilation-warning ((,class :foreground ,hazakura-yellow)))
 `(rustic-compilation-column ((,class :foreground ,fg-dark)))
 `(rustic-compilation-line ((,class :foreground ,fg-dark)))

 ;; Git
 `(git-commit-summary ((,class :foreground ,hazakura-green)))
 `(git-commit-overlong-summary ((,class :foreground ,hazakura-red)))

 ;; Magit
 `(magit-header-line ((,class :foreground ,fg :weight bold :background ,bg :underline (:color ,comment))))
 `(magit-diff-file-heading-highlight ((,class :foreground ,hazakura-purple :weight bold)))

 `(magit-section-highlight ((,class :foreground ,hazakura-purple :weight bold)))
 `(magit-section-heading ((,class :foreground ,hazakura-magenta)))
 `(magit-head ((,class :foreground ,hazakura-purple)))
 `(magit-hash ((,class :foreground ,fg-dark-alt)))
 `(magit-header-line ((,class :foreground ,hazakura-yellow)))
 `(magit-branch-current ((,class :foreground ,hazakura-purple)))
 `(magit-branch-local ((,class :foreground ,hazakura-purple)))
 `(magit-branch-remote ((,class :foreground ,hazakura-cyan)))

 `(magit-diff-added ((,class :foreground ,hazakura-green :background ,bg :slant italic)))
 `(magit-diff-context ((,class :foreground ,fg-dark :background ,bg :slant italic)))
 `(magit-diff-removed ((,class :foreground ,hazakura-red :background ,bg :slant italic)))

 `(magit-diff-hunk-heading-highlight ((,class :background ,bg-dark :foreground ,hazakura-magenta :weight bold)))
 `(magit-diff-hunk-heading ((,class :background ,bg-light :foreground ,fg-dark)))
 `(magit-diff-added-highlight ((,class :background ,bg-light :foreground ,hazakura-green)))
 `(magit-diff-base-highlight ((,class :background ,fg :foreground ,hazakura-blue)))
 `(magit-diff-lines-highlight ((,class :background ,hazakura-cyan)))
 `(magit-diff-lines-heading ((,class :background ,hazakura-blue :foreground ,fg)))
 `(magit-diff-lines-boundary ((,class :background ,hazakura-blue)))
 `(magit-diff-context-highlight ((,class :background ,bg-light :foreground ,fg)))
 `(magit-diff-removed-highlight ((,class :background ,bg-light :foreground ,hazakura-red)))

 ;; Flycheck
 `(flycheck-inline-info ((,class :foreground ,hazakura-yellow)))
 `(flycheck-inline-warning ((,class :foreground ,hazakura-magenta)))
 `(flycheck-inline-error ((,class :foreground ,hazakura-red)))

 `(flycheck-fringe-warning ((,class :foreground ,hazakura-magenta)))
 `(flycheck-fringe-error ((,class :foreground ,hazakura-red)))
 `(flycheck-fringe-info ((,class :foreground ,hazakura-yellow)))

 `(flycheck-warning ((,class :underline (:style wave :color ,hazakura-magenta))))
 `(flycheck-info ((,class :underline (:style wave :color ,hazakura-yellow))))
 `(flycheck-error ((,class :underline (:style wave :color ,hazakura-red))))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'hazakura)
(provide 'hazakura-theme)

;; hazakura-theme.el ends here
