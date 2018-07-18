;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(php
     ;; javascript
     react
     (typescript);; :variables typescript-fmt-on-save t)
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     yaml
     sql
     emacs-lisp
     ;; git
     version-control
     git
     osx
     (ruby :variables ruby-test-runner 'rspec)
     markdown
     org
     ruby-on-rails
     ivy
     html
     elixir
     treemacs
     docker
     ;; restclient
     ;; vim-things
     ;; php
     gtags
     ;; csharp
     ;; gnus
     ;; eyebrowse
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(
                                      terraform-mode
                                      editorconfig
                                      ;; ng2-mode
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         solarized-light
                         apropospriate-light)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro"
   dotspacemacs-default-font '("Hasklig"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg", "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil

   dotspacemacs-line-numbers f
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."

  ;; (defun hash-rockets ()
  ;;   (interactive "r")
  ;;   (query-replace-regexp "\\([a-z_]+\\): " ":\\1 => ")
  ;; )

  (fset 'var-to-let
        [?0 ?w ?y ?W ?O escape ?p ?0 ?w ?i ?l ?e ?t ?\( ?: kp-delete escape ?A backspace ?\) ?  ?\{ escape ?j ?0 ?f ?= ?l ?l ?Y ?k ?$ ?h ?p ?c ?s ?\} ?\{])

  (fset 'old-hash-to-new-hash
    [?0 ?f ?: ?x ?f ?= ?d ?w ?g ?e ?a ?: escape])



  (setq-default
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2
   flycheck-elixir-credo-strict t
   )

  ;; (when (window-system)
  ;;   (set-default-font "Hasklig"))
  (let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
                 (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
                 (36 . ".\\(?:>\\)")
                 (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
                 (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
                 (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
                 (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
                 (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
   ;;              (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
                 (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
                 (48 . ".\\(?:x[a-zA-Z]\\)")
                 (58 . ".\\(?:::\\|[:=]\\)")
                 (59 . ".\\(?:;;\\|;\\)")
                 (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
                 (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
                 (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
                 (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
                 (91 . ".\\(?:]\\)")
                 (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
                 (94 . ".\\(?:=\\)")
                 (119 . ".\\(?:ww\\)")
                 (123 . ".\\(?:-\\)")
                 (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
                 (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
                 )
               ))
    (dolist (char-regexp alist)
      (set-char-table-range composition-function-table (car char-regexp)
                            `([,(cdr char-regexp) 0 font-shape-gstring]))))



)

(defun dotspacemacs/user-config ()
  (global-set-key (kbd "TAB") 'hippie-expand)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "hd" 'elixir-mode-open-docs-stable)
  (spacemacs/set-leader-keys-for-major-mode 'typescript-mode "f" 'tide-fix)

  (setq ruby-insert-encoding-magic-comment nil)
  (setq powerline-default-separator 'bar)
  (setq neo-vc-integration nil)
  (setq-default indent-tabs-mode nil)
  ;; (setq ns-use-srgb-colorspace nil)

  (add-hook 'ruby-mode-hook
            (function (lambda ()
                        (setq evil-shift-width 2)
                        (setq ruby-insert-encoding-magic-comment nil))))

  (add-hook 'elixir-mode-hook
            (function (lambda ()
                        (setq evil-shift-width 2))))

  (add-hook 'web-mode-hook
            (function (lambda ()
                        (setq evil-shift-width 2))))

  (add-hook 'typescript-mode-hook
            (function (lambda ()
                        (setq evil-shift-width 2)))

            (editorconfig-mode 1)

            (function (lambda ()
                        (flycheck-add-next-checker 'typescript-tide '(t . typescript-tslint) 'append)))
            )

  (add-hook 'web-mode-hook
            (function (lambda ()
                        (setq web-mode-markup-indent-offset 2))))

  (global-linum-mode)
  (global-flycheck-mode)

  ;; Clear highlighting with SPC s c
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(mode-require-final-newline t)
 '(org-agenda-files (quote ("~/org/")))
 '(package-selected-packages
   (quote
    (ahg yarn-mode editorconfig git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl ansible diminish s ng2-mode angular-mode tide typescript-mode f flycheck-pos-tip pos-tip swiper avy evil async dash winum fuzzy flycheck-credo hippie-exp-ext whitespace-cleanup-mode packed flycheck-elixir company-web web-completion-data company-tern dash-functional tern company-statistics auto-yasnippet ac-ispell auto-complete counsel bind-key iedit smartparens highlight helm helm-core projectile hydra ivy web-beautify livid-mode skewer-mode simple-httpd js2-refactor yasnippet multiple-cursors js2-mode js-doc ruby-hash-syntax json-mode json-snatcher json-reformat coffee-mode yaml-mode web-mode tagedit sql-indent smeargle slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder rbenv pug-mode projectile-rails rake inflections pbcopy osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro alert log4e gntp org-download ob-elixir org mmm-mode minitest markdown-toc markdown-mode magit-gitflow less-css-mode launchctl htmlize haml-mode gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md ggtags flycheck-mix flycheck feature-mode evil-magit magit magit-popup git-commit with-editor emmet-mode csv-mode chruby bundler inf-ruby alchemist company elixir-mode monokai-theme ws-butler window-numbering which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline smex restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word counsel-projectile column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link)))
 '(projectile-completion-system (quote ivy))
 '(projectile-enable-caching t)
 '(require-final-newline nil)
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-vagrant-when-possible nil)
 '(ruby-deep-indent-paren-style nil)
 '(typescript-indent-level 2)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C")))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(global-display-line-numbers-mode nil)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(mode-require-final-newline t)
 '(org-agenda-files (quote ("~/org/")))
 '(package-selected-packages
   (quote
    (yasnippet-snippets treemacs-projectile treemacs-evil treemacs ht pfuture terraform-mode hcl-mode symon string-inflection spaceline-all-the-icons all-the-icons memoize powerline solarized-theme ruby-refactor rjsx-mode phpunit phpcbf php-extras php-auto-yasnippets password-generator spinner overseer org-category-capture org-mime org-brain nameless magit-svn json-navigator hierarchy ivy-yasnippet ivy-xref ivy-purpose window-purpose imenu-list impatient-mode parent-mode gitignore-templates flx evil-org ghub evil-lion evil-goggles evil-cleverparens paredit anzu drupal-mode dockerfile-mode docker tablist docker-tramp counsel-gtags counsel-css company-php ac-php-core xcscope php-mode centered-cursor-mode browse-at-remote apropospriate-theme pkg-info epl popup font-lock+ goto-chg undo-tree dotenv-mode bind-map ahg yarn-mode editorconfig git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl ansible diminish s ng2-mode angular-mode tide typescript-mode f flycheck-pos-tip pos-tip swiper avy evil async dash winum fuzzy flycheck-credo hippie-exp-ext whitespace-cleanup-mode packed flycheck-elixir company-web web-completion-data company-tern dash-functional tern company-statistics auto-yasnippet ac-ispell auto-complete counsel bind-key iedit smartparens highlight helm helm-core projectile hydra ivy web-beautify livid-mode skewer-mode simple-httpd js2-refactor yasnippet multiple-cursors js2-mode js-doc ruby-hash-syntax json-mode json-snatcher json-reformat coffee-mode yaml-mode web-mode tagedit sql-indent smeargle slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder rbenv pug-mode projectile-rails rake inflections pbcopy osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro alert log4e gntp org-download ob-elixir org mmm-mode minitest markdown-toc markdown-mode magit-gitflow less-css-mode launchctl htmlize haml-mode gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md ggtags flycheck-mix flycheck feature-mode evil-magit magit magit-popup git-commit with-editor emmet-mode csv-mode chruby bundler inf-ruby alchemist company elixir-mode monokai-theme ws-butler window-numbering which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline smex restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word counsel-projectile column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link)))
 '(projectile-completion-system (quote ivy))
 '(projectile-enable-caching t)
 '(require-final-newline nil)
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-vagrant-when-possible nil)
 '(ruby-deep-indent-paren-style nil)
 '(typescript-indent-level 2)
 '(web-mode-attr-indent-offset 2 t)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
