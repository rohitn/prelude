;;; personal.el --- Prelude personal customizations

;; Load ELPA packages
(prelude-require-packages '(ag ruby-hash-syntax rspec-mode bundler aggressive-indent))

;; Show line numbers in left margin
(global-linum-mode)

;; Blink the cursor
(blink-cursor-mode)

;; For selection highlighting
(setq transient-mark-mode t)

;; Disable guru mode, prefer arrow keys
(setq prelude-guru nil)

;; Highlight lines that exceed specified length
(setq whitespace-line-column 120)

;; Start server so emacsclient works without running emacs in daemon mode
(server-start)

;; Save session
(desktop-save-mode 1)

;; rvm integration, use default version
(require 'rvm)
(rvm-use-default)

;; Prevent C-z from minimizing emacs window on OSX
(global-unset-key (kbd "C-z"))

;; Prefix commit message with current branch name
(add-hook 'git-commit-setup-hook
          (lambda()
            (auto-fill-mode 1)
            (flyspell-mode 1)
            (beginning-of-buffer)
            (insert (concat (magit-get-current-branch) " "))
            (end-of-line)))

;; Enable aggressive indent for all modes
(global-aggressive-indent-mode 1)
