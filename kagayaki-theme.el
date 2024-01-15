;;; kagayaki-theme.el --- The soft yet colorful theme for Emacs.
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
 kagayaki "The soft yet colorful theme for Emacs."

 ((((class color) (min-colors #xFFFFFF)))
  ;; Specify the color palette, color columns correspond to each of the classes above.
  (fg "#ece5ea")
  (fg-dark "#5c5c61")
  (fg-dark-alt "#454449")
  (bg "#151517")
  (bg-dark "#151517")
  (bg-light "#27272b")
  (selection "#242426")
  (highlight "#5c5c61")
  (comment "#454449")
  (kagayaki-red "#f06969")
  (kagayaki-green "#91d65c")
  (kagayaki-purple "#a292e8")
  (kagayaki-blue "#78b9c4")
  (kagayaki-magenta "#e887bb")
  (kagayaki-yellow "#d9d564")
  (kagayaki-cyan "#7ee6ae"))

 ;; General
 ((default (:foreground fg :background bg))
  (link (:foreground kagayaki-cyan :underline t))
  (region (:background selection))
  (highlight (:background bg-light))
  (help-key-binding (:background bg :foreground kagayaki-magenta :slant 'italic))
  (font-lock-keyword-face (:foreground kagayaki-purple :slant 'italic))
  (show-paren-match (:foreground kagayaki-magenta :weight 'bold :underline t))
  (show-paren-mismatch (:foreground kagayaki-red :weight 'bold))
  (line-number (:foreground comment :background bg :slant 'italic))
  (line-number-current-line (:foreground kagayaki-magenta :background bg :weight 'bold :slant 'italic))
  (font-lock-variable-name-face (:foreground kagayaki-yellow))
  (font-lock-warning-face (:foreground kagayaki-yellow))
  (completions-common-part (:foreground kagayaki-purple))
  (completions-first-difference (:foreground fg))
  (font-lock-constant-face (:foreground kagayaki-green))
  (font-lock-string-face (:foreground kagayaki-green))
  (font-lock-builtin-face (:foreground kagayaki-blue))
  (error (:foreground kagayaki-red))
  (font-lock-type-face (:foreground kagayaki-red))
  (font-lock-comment-face (:foreground comment))
  (secondary-selection (:foreground highlight))

  ;; Isearch
  (isearch (:foreground kagayaki-green :background bg-light :weight 'bold :underline t))
  (isearch-fail (:foreground kagayaki-red :weight 'bold))

  ;; Modeline
  (mode-line (:background bg-light))

  ;; NANO-modeline
  (nano-modeline-active (:box () :foreground fg :background bg-light))
  (nano-modeline-inactive (:box () :foreground highlight :background bg-light))
  (nano-modeline-status (:foreground fg :background kagayaki-purple :weight 'bold))

  ;; Bespoke modeline
  (bespoke-modeline-active-status-** (:foreground fg :background kagayaki-blue :weight 'bold))
  (bespoke-modeline-active-status-RW (:foreground fg :background kagayaki-purple :weight 'bold))
  (bespoke-modeline-active-status-RO (:foreground fg :background kagayaki-magenta :weight 'bold))
  (bespoke-modeline-inactive (:background bg-light :foreground highlight))
  (bespoke-modeline-inactive-name (:background bg-light :foreground highlight))
  (bespoke-modeline-inactive-primary (:background bg-light :foreground highlight))
  (bespoke-modeline-inactive-secondary (:background bg-light :foreground highlight))

  ;; Window
  (window-divider (:foreground bg :background bg))
  (window-divider-first-pixel (:foreground bg :background bg))
  (window-divider-last-pixel (:foreground bg :background bg))

  ;; Fringe
  (fringe (:background fg :foreground fg))

  ;; Org mode
  (org-code (:foreground fg-dark))
  (org-block (:foreground fg-dark))
  (org-ellipsis (:foreground fg-dark-alt :weight 'bold))
  (org-headline-done (:foreground fg))
  (org-checkbox (:foreground kagayaki-magenta))
  (org-todo (:foreground kagayaki-cyan :slant 'normal))
  (org-done (:foreground kagayaki-green :slant 'normal))
  (org-meta-line (:foreground fg-dark-alt))
  (org-link (:foreground kagayaki-green :underline t :weight 'bold))
  (org-drawer (:foreground comment))
  (org-date (:foreground kagayaki-magenta))
  (org-table (:foreground kagayaki-cyan))
  (org-special-keyword (:foreground fg))
  (org-document-info-keyword (:foreground kagayaki-green))
  (org-list-dt (:foreground kagayaki-red))
  (org-level-1 (:foreground kagayaki-purple :weight 'bold))
  (org-level-2 (:foreground kagayaki-cyan :weight 'bold))
  (org-level-3 (:foreground kagayaki-green :weight 'bold))
  (org-level-4 (:weight 'bold))
  (org-level-5 (:weight 'bold))
  (org-level-6 (:weight 'bold))
  (org-level-7 (:weight 'bold))
  (org-level-8 (:weight 'bold))
  (org-document-info (:foreground fg-dark))

  ;; Org Superstar
  (org-superstar-item (:foreground kagayaki-yellow))
  (org-superstar-header-bullet (:foreground kagayaki-magenta :slant 'normal))

  ;; Markdown
  (markdown-code-face (:inherit 'default :foreground kagayaki-purple))
  (markdown-header-face (:foreground kagayaki-cyan :weight 'bold))

  ;; Vertico
  (vertico-current (:background bg-light))

  ;; Minibuffer prompt
  (minibuffer-prompt (:foreground kagayaki-green))

  ;; Orderless
  (orderless-match-face-0 (:foreground kagayaki-purple))
  (orderless-match-face-1 (:foreground kagayaki-cyan))
  (orderless-match-face-2 (:foreground kagayaki-green))
  (orderless-match-face-3 (:foreground kagayaki-yellow))

  ;; which-key
  (which-key-command-description-face (:foreground fg))

  ;; Dired
  (diredfl-read-priv (:foreground kagayaki-yellow))
  (diredfl-dir-heading (:foreground kagayaki-magenta :weight 'bold))
  (diredfl-dir-priv (:foreground kagayaki-purple))
  (diredfl-no-priv (:foreground fg-dark))
  (diredfl-write-priv (:foreground kagayaki-red))
  (diredfl-exec-priv (:foreground kagayaki-green))
  (diredfl-dir-name (:foreground kagayaki-magenta))
  (diredfl-file-name (:foreground fg))
  (diredfl-file-suffix (:foreground kagayaki-yellow))
  (diredfl-date-time (:foreground kagayaki-purple))

  ;; Evil
  (evil-ex-info (:foreground kagayaki-red))
  (evil-ex-lazy-highlight (:background highlight))
  (evil-ex-substitute-matches (:strike-through t :weight 'bold :foreground kagayaki-yellow))
  (evil-ex-substitute-replacement (:foreground kagayaki-red :weight 'bold))

  ;; Eglot
  (eglot-highlight-symbol-face (:foreground kagayaki-purple))

  ;; Rustic
  (rustic-compilation-error (:foreground kagayaki-red))
  (rustic-compilation-warning (:foreground kagayaki-yellow))
  (rustic-compilation-column (:foreground fg-dark))
  (rustic-compilation-line (:foreground fg-dark))

  ;; Git
  (git-commit-summary (:foreground kagayaki-green))
  (git-commit-overlong-summary (:foreground kagayaki-red))
  
  ;; Magit
  (magit-header-line (:foreground fg :weight 'bold :background bg :underline (:color comment)))
  (magit-diff-file-heading-highlight (:foreground kagayaki-purple :weight 'bold))

  (magit-section-highlight (:foreground kagayaki-purple :weight 'bold))
  (magit-section-heading (:foreground kagayaki-magenta))
  (magit-head (:foreground kagayaki-purple))
  (magit-hash (:foreground fg-dark-alt))
  (magit-header-line (:foreground kagayaki-yellow))
  (magit-branch-current (:foreground kagayaki-purple))
  (magit-branch-local (:foreground kagayaki-purple))
  (magit-branch-remote (:foreground kagayaki-cyan))

  (magit-diff-added (:foreground kagayaki-green :background bg :slant 'italic))
  (magit-diff-context (:foreground fg-dark :background bg :slant 'italic))
  (magit-diff-removed (:foreground kagayaki-red :background bg :slant 'italic))
  
  (magit-diff-hunk-heading-highlight (:background bg-dark :foreground kagayaki-magenta :weight 'bold))
  (magit-diff-hunk-heading (:background bg-light :foreground fg-dark))
  (magit-diff-added-highlight (:background bg-light :foreground kagayaki-green))
  (magit-diff-base-highlight (:background fg :foreground kagayaki-blue))
  (magit-diff-lines-highlight (:background kagayaki-cyan))
  (magit-diff-lines-heading (:background kagayaki-blue :foreground fg))
  (magit-diff-lines-boundary (:background kagayaki-blue))
  (magit-diff-context-highlight (:background bg-light :foreground fg))
  (magit-diff-removed-highlight (:background bg-light :foreground kagayaki-red))

  ;; Flycheck
  (flycheck-inline-info (:foreground kagayaki-yellow))
  (flycheck-inline-warning (:foreground kagayaki-magenta))
  (flycheck-inline-error (:foreground kagayaki-red))

  (flycheck-fringe-warning (:foreground kagayaki-magenta))
  (flycheck-fringe-error (:foreground kagayaki-red))
  (flycheck-fringe-info (:foreground kagayaki-yellow))

  (flycheck-warning (:underline (:style 'wave :color kagayaki-magenta)))
  (flycheck-info (:underline (:style 'wave :color kagayaki-yellow)))
  (flycheck-error (:underline (:style 'wave :color kagayaki-red)))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'kagayaki)

;;; kagayaki-theme.el ends here
