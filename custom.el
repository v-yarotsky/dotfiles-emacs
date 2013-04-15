(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow-night)

;;; Key mappings

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "C-c ,") 'ruby-test-run)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(add-hook 'ruby-mode-hook
                    (lambda () (run-hooks 'abg-code-modes-hook)))

