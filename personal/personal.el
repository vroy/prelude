;; My personal config
;;
;; prelude's init.el will require the following files for us:
;;   * ./bindings
;;   * ./functions
;;   * ./modes

;; Disaxble spellchecking
(setq prelude-flyspell nil)

;; Set default font size to 13pt.
(set-face-attribute 'default (selected-frame) :height 130)

;; Refresh buffers automatically when file changed on disk.
(global-auto-revert-mode t)

;; Set the coffeescript tab width to 2.
(add-hook 'coffee-mode-hook '
          (lambda()
            "coffee-mode-hook"
            (set (make-local-variable 'tab-width) 2)))

;; Automatically go to the right place on haml new lines.
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;; Some bindings
(global-set-key (kbd "C-C C-K") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-x |") 'split-window-horizontally)
(global-set-key (kbd "C-x -") 'split-window-vertically)
(global-set-key [(control return)] 'textmate-next-line)
