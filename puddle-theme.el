;;; puddle-theme.el --- Emacs theme for autumn

;; Copyright (C) 2016  Bartłomiej Kruczyk

;; Author: bkruczyk <bartlomiej.kruczyk@gmail.com>
;; Version: 0.1
;; Keywords: themes
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/bkruczyk/puddle-theme

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Emacs theme for autumn.

;;; Credits:

;; skr0tm <https://github.com/skr0tm> for creating color palette.
;; See <https://www.reddit.com/r/unixporn/comments/5a48wv/2bwm_puddle>.

;;; Code:

(deftheme puddle "Puddle theme")

(let* ((plain "#e0e2e0")

       (gold1"#f8b92e")
       (gold2 "#c69425")
       (brick1 "#dc6f4b")
       (brick2 "#aa563a")
       (blue1 "#1999e4")
       (blue2 "#1478b2")
       (orange "#f89d07")
       (orange2 "#c67e06")
       (plum1 "#9394dc")
       (plum2 "#7273aa")
       (violet1 "#dc8b92")
       (violet2 "#aa6c71")
       (black1 "#2e2e2e")
       (black2 "#1d1d1d")
       (white1 "#e0e2e0")
       (white2 "#afb0af")

       (fg white1)
       (bg black2)
       (hl-line "grey15"))

  (custom-theme-set-variables
   'puddle
   `(notmuch-search-line-faces
     '(("unread" :foreground ,plum1)
       ("flagged" :foreground ,blue1)
       ("deleted" :foreground ,brick1 :bold t))))

  (custom-theme-set-faces
   'puddle

   ;; font lock
   `(default ((t (:inherit nil :foreground ,fg :background ,bg))))
   `(font-lock-builtin-face ((t (:foreground ,fg))))
   `(font-lock-comment-face ((t (:foreground "grey40"))))
   `(font-lock-comment-delimiter-face ((t (:foreground "grey40"))))
   `(font-lock-constant-face ((t (:foreground ,blue1))))
   `(font-lock-doc-face ((t (:foreground ,gold1))))
   `(font-lock-function-name-face ((t (:foreground ,orange))))
   `(font-lock-variable-name-face ((t (:foreground ,orange))))
   `(font-lock-keyword-face ((t (:foreground ,plum1))))
   `(font-lock-preprocessor-face ((t (:foreground ,blue1))))
   `(font-lock-string-face ((t (:foreground ,brick1))))
   `(font-lock-type-face ((t (:foreground ,violet1))))
   `(font-lock-warning-face ((t (:foreground ,violet1 :weight bold))))
   `(shadow ((t (:foreground ,white2))))
   `(success ((t (:foreground ,blue1))))
   `(error ((t (:foreground ,brick1 :weight bold))))
   `(warning ((t (:foreground ,violet1))))

   ;; ui
   `(cursor ((t (:background ,brick1))))
   `(region ((t (:foreground ,bg :background ,white2))))
   `(secondary-selection ((t (:foreground ,fg :background ,plum1))))
   `(fringe ((t (:background ,bg))))
   `(linum ((t (:foreground ,white2 :background ,bg))))
   `(vertical-border ((t (:foreground ,white2))))
   `(highlight ((t (:foreground ,bg :background ,gold1))))
   `(escape-glyph ((t (:foreground ,blue1))))
   `(hl-line ((t (:inherit nil :background ,hl-line))))
   `(minibuffer-prompt ((t (:foreground ,fg))))
   `(header-line ((t (:inherit mode-line))))
   `(link ((t (:foreground ,white2 :underline t))))
   `(link-visited ((t (:inherit link :foreground ,orange))))
   `(mode-line ((t (:inverse-video unspecified
                                   :overline "grey20"
                                   :underline "grey20"
                                   :foreground ,plain
                                   :background "grey20"
                                   ))))
   `(mode-line-inactive ((t (:inverse-video unspecified
                                            :overline ,bg
                                            :underline ,bg
                                            :foreground ,plain
                                            :background ,bg))))

   ;; whitespace-mode
   `(trailing-whitespace ((t (:background ,violet1 :foreground ,bg))))
   `(whitespace-trailing ((t (:background ,violet1 :foreground ,bg))))
   `(whitespace-empty ((t :background ,gold1)))
   `(whitespace-line ((t (:background ,white2 :foreground ,violet1))))

   `(whitespace-hspace ((t (:foreground ,white2))))
   `(whitespace-space ((t (:foreground ,white2))))
   `(whitespace-tab ((t (:foreground ,white2))))
   `(whitespace-newline ((t (:foreground ,white2))))

   `(whitespace-indentation ((t (:background ,gold1 :foreground ,violet1))))
   `(whitespace-space-after-tab ((t (:background ,gold1 :foreground ,violet1))))
   `(whitespace-space-before-tab ((t (:background ,gold1 :foreground ,violet1))))

   ;; ;; search
   `(isearch ((t (:foreground ,bg :background ,violet1))))
   `(isearch-fail ((t (:foreground ,bg :background ,brick1))))
   `(lazy-highlight ((t (:foreground ,bg :background ,blue1))))

   ;; show-paren-mode
   `(show-paren-match ((t (:foreground ,gold1 :background ,bg :bold t))))
   `(show-paren-mismatch ((t (:foreground ,bg :background ,brick1))))

   ;; ;; anzu
   `(anzu-mode-line ((t (:foreground ,violet1))))
   `(anzu-replace-to ((t (:background ,gold1 :foreground ,bg))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,white2))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,gold1))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,violet1))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,blue1))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,plum1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,gold1))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground "powder blue1"))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground "rosy brown"))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,brick1))))

   ;; org
   `(outline-1 ((t (:foreground ,orange :height 1.2))))
   `(outline-2 ((t (:foreground ,gold1))))

   `(org-done ((t (:foreground ,blue1 :weight bold))))
   `(org-todo ((t (:foreground ,gold1 :weight bold))))
   `(org-date ((t (:foreground ,blue1 :underline t))))
   `(org-special-keyword ((t (:foreground ,brick1 :weight bold))))
   `(org-document-info ((t (:foreground ,white2))))
   `(org-document-title ((t (:foreground ,fg :family "sans" :height 1.8 :weight bold))))

   ;; notmuch
   `(notmuch-tag-face ((t (:foreground ,violet1))))

   ;; message
   `(message-cited-text ((t :foreground ,plum1)))
   `(message-header-cc ((t (:foreground ,fg))))
   `(message-header-name ((t (:foreground ,brick1))))
   `(message-header-other ((t (:foreground ,fg))))
   `(message-header-subject ((t (:foreground ,orange))))
   `(message-header-to ((t (:foreground ,gold1))))
   `(message-header-xheader ((t (:foreground ,fg))))
   `(message-mml ((t (:foreground ,white2))))

   ;; magit
   `(magit-bisect-bad ((t (:foreground ,brick1))))
   `(magit-bisect-good ((t (:foreground ,blue1))))
   `(magit-bisect-skip ((t (:foreground ,orange))))
   `(magit-blame-heading ((t (:foreground "grey20"))))
   `(magit-branch-local ((t (:foreground ,orange))))
   `(magit-branch-remote ((t (:foreground ,violet1))))
   `(magit-diff-added ((t (:background ,bg :foreground ,blue2))))
   `(magit-diff-added-highlight ((t (:background "grey20" :foreground ,blue1))))
   `(magit-diff-base ((t (:background ,bg :foreground ,gold1))))
   `(magit-diff-base-highlight ((t (:background "grey20" :foreground ,gold1))))
   `(magit-diff-context ((t (:foreground ,white2 :background ,bg))))
   `(magit-diff-context-highlight ((t (:background "grey20" :foreground ,white2))))
   `(magit-diff-removed ((t (:background ,bg :foreground ,brick1))))
   `(magit-diff-removed-highlight ((t (:background "grey25" :foreground ,brick1))))
   `(magit-diff-lines-boundary ((t (:foreground ,bg :background ,gold1))))
   `(magit-diff-lines-heading ((t (:background ,gold1 :foreground ,bg))))
   `(magit-diffstat-added ((t (:foreground ,blue1 :background ,bg))))
   `(magit-diffstat-removed ((t (:foreground ,brick1 :background ,bg))))
   `(magit-dimmed ((t (:inherit shadow))))
   `(magit-header-line ((t (:foreground ,gold1))))
   `(magit-log-author ((t (:foreground ,gold1))))
   `(magit-log-date ((t (:foreground ,white2))))
   `(magit-process-ng ((t (:inherit error))))
   `(magit-process-ok ((t (:foreground ,blue1))))
   `(magit-section-heading ((t (:foreground ,gold1))))
   `(magit-section-heading-selection ((t (:foreground ,gold1))))

   ;; diff-hl
   `(diff-hl-insert ((t (:background ,blue1 :foreground ,bg))))
   `(diff-hl-delete ((t (:background ,brick1 :foreground ,bg))))
   `(diff-hl-change ((t (:background ,gold1 :foreground ,bg))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'puddle)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; puddle-theme.el ends here
