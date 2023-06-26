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

(require 'autothemer)

(unless (>= emacs-major-version 26)
  (error "Requires Emacs 26 or later"))

(autothemer-deftheme
 hazakura "The soft yet colorful theme for Emacs."

 ((((class color) (min-colors #xFFFFFF)))
  ;; Specify the color palette, color columns correspond to each of the classes above.
  (fg "#ece5ea")
  (fg-dark "#5c5c61")
  (fg-dark-alt "#454449")
  (bg "#151517")
  (bg-dark "#0d0d0f")
  (bg-light "#27272b")
  (selection "#454449")
  (highlight "#5c5c61")
  (comment "#7ee6ae")
  (hazakura-red "#f06969")
  (hazakura-green "#91d65c")
  (hazakura-blue "#a292e8")
  (hazakura-magenta "#e887bb")
  (hazakura-yellow "#d9d564")
  (hazakura-cyan "#7ee6ae"))

 ;; General
 ((default (:foreground fg :background bg))
  (link (:foreground hazakura-cyan :underline t))
  (region (:background selection))
  (highlight (:background bg-light))
  (help-key-binding (:background bg :foreground hazakura-magenta :slant 'italic))
  (font-lock-keyword-face (:foreground hazakura-magenta))
  (show-paren-match (:foreground hazakura-green :weight 'bold))
  (show-paren-mismatch (:foreground hazakura-red :weight 'bold))
  (line-number (:foreground highlight :background bg))
  (line-number-current-line (:foreground fg :background bg))
  (font-lock-variable-name-face (:foreground hazakura-yellow))
  (font-lock-warning-face (:foreground hazakura-yellow))
  (completions-common-part (:foreground hazakura-blue))
  (completions-first-difference (:foreground fg))
  (font-lock-constant-face (:foreground hazakura-yellow))
  (font-lock-string-face (:foreground hazakura-green))
  (font-lock-builtin-face (:foreground hazakura-red))
  (error (:foreground hazakura-red))
  (font-lock-type-face (:foreground hazakura-red))
  (font-lock-comment-face (:foreground comment))
  (secondary-selection (:foreground highlight))

  ;; Isearch
  (isearch (:foreground hazakura-green :background bg-light :weight 'bold :underline t))
  (isearch-fail (:foreground hazakura-red :weight 'bold))

  ;; Modeline
  (mode-line (:background bg-light))

  ;; Window
  (window-divider (:foreground selection))

  ;; Org mode
  (org-code (:foreground fg-dark))
  (org-block (:foreground fg-dark))
  (org-ellipsis (:foreground fg-dark-alt :weight 'bold))
  (org-headline-done (:foreground fg))
  (org-checkbox (:foreground hazakura-magenta))
  (org-todo (:foreground hazakura-magenta :slant 'normal))
  (org-done (:foreground hazakura-green :slant 'normal))
  (org-meta-line (:foreground fg-dark-alt))
  (org-link (:foreground hazakura-green :underline t :weight 'bold))
  (org-drawer (:foreground hazakura-red))
  (org-date (:foreground hazakura-magenta))
  (org-table (:foreground hazakura-cyan))
  (org-special-keyword (:foreground fg))
  (org-document-info-keyword (:foreground hazakura-yellow))
  (org-list-dt (:foreground hazakura-red))
  (org-level-1 (:weight 'bold))
  (org-level-2 (:weight 'bold))
  (org-level-3 (:weight 'bold))
  (org-level-4 (:weight 'bold))
  (org-level-5 (:weight 'bold))
  (org-level-6 (:weight 'bold))
  (org-level-7 (:weight 'bold))
  (org-level-8 (:weight 'bold))
  (org-document-info (:foreground fg-dark))

  ;; Org Superstar
  (org-superstar-item (:foreground hazakura-yellow))
  (org-superstar-header-bullet (:foreground hazakura-magenta :slant 'normal))

  ;; Markdown
  (markdown-code-face (:inherit 'default :foreground hazakura-yellow))
  (markdown-header-face (:foreground hazakura-magenta :weight 'bold))

  ;; Vertico
  (vertico-current (:background bg-light))

  ;; Minibuffer prompt
  (minibuffer-prompt (:foreground hazakura-magenta))

  ;; Orderless
  (orderless-match-face-0 (:foreground hazakura-yellow))
  (orderless-match-face-1 (:foreground hazakura-green))
  (orderless-match-face-2 (:foreground hazakura-blue))
  (orderless-match-face-3 (:foreground hazakura-cyan))

  ;; which-key
  (which-key-command-description-face (:foreground fg))

  ;; Dired
  (diredfl-read-priv (:foreground hazakura-yellow))
  (diredfl-dir-heading (:foreground hazakura-magenta :weight 'bold))
  (diredfl-dir-priv (:foreground hazakura-blue))
  (diredfl-no-priv (:foreground fg-dark))
  (diredfl-write-priv (:foreground hazakura-red))
  (diredfl-exec-priv (:foreground hazakura-green))
  (diredfl-dir-name (:foreground hazakura-magenta))
  (diredfl-file-name (:foreground fg))
  (diredfl-file-suffix (:foreground hazakura-yellow))
  (diredfl-date-time (:foreground hazakura-blue))

  ;; Evil
  (evil-ex-info (:foreground hazakura-red))
  (evil-ex-lazy-highlight (:background highlight))
  (evil-ex-substitute-matches (:strike-through t :weight 'bold :foreground hazakura-yellow))
  (evil-ex-substitute-replacement (:foreground hazakura-red :weight 'bold))

  ;; Eglot
  (eglot-highlight-symbol-face (:foreground hazakura-blue))

  ;; Rustic
  (rustic-compilation-error (:foreground hazakura-red))
  (rustic-compilation-warning (:foreground hazakura-yellow))
  (rustic-compilation-column (:foreground fg-dark))
  (rustic-compilation-line (:foreground fg-dark))

  ;; Git
  (git-commit-summary (:foreground hazakura-green))
  (git-commit-overlong-summary (:foreground hazakura-red))
  
  ;; Magit
  (magit-header-line (:foreground hazakura-cyan :weight 'bold :background bg))
  (magit-diff-file-heading-highlight (:foreground hazakura-yellow :weight 'bold))

  (magit-section-highlight (:foreground hazakura-blue :weight 'bold))
  (magit-section-heading (:foreground hazakura-magenta))
  (magit-head (:foreground hazakura-blue))
  (magit-hash (:foreground fg-dark-alt))
  (magit-header-line (:foreground hazakura-yellow))
  (magit-branch-current (:foreground hazakura-blue))
  (magit-branch-local (:foreground hazakura-blue))
  (magit-branch-remote (:foreground hazakura-cyan))

  (magit-diff-added (:foreground hazakura-green :background bg :slant 'italic))
  (magit-diff-context (:foreground fg-dark :background bg :slant 'italic))
  (magit-diff-removed (:foreground hazakura-red :background bg :slant 'italic))
  
  (magit-diff-hunk-heading-highlight (:background bg-dark :foreground hazakura-magenta :weight 'bold))
  (magit-diff-hunk-heading (:background bg-dark :foreground fg-dark))
  (magit-diff-added-highlight (:background bg-dark :foreground hazakura-green :slant 'italic))
  (magit-diff-context-highlight (:background bg-dark :foreground fg :slant 'italic))
  (magit-diff-removed-highlight (:background bg-dark :foreground hazakura-red :slant 'italic))
  
  ;; Flycheck
  (flycheck-inline-info (:foreground hazakura-yellow))
  (flycheck-inline-warning (:foreground hazakura-magenta))
  (flycheck-inline-error (:foreground hazakura-red))

  (flycheck-fringe-warning (:foreground hazakura-magenta))
  (flycheck-fringe-error (:foreground hazakura-red))
  (flycheck-fringe-info (:foreground hazakura-yellow))

  (flycheck-warning (:underline (:style 'wave :color hazakura-magenta)))
  (flycheck-info (:underline (:style 'wave :color hazakura-yellow)))
  (flycheck-error (:underline (:style 'wave :color hazakura-red)))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'hazakura)

;;; hazakura-theme.el ends here