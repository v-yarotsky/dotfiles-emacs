(setq linum-format "%3d ") ;;; add some spacing after numbers

(add-hook 'vlyrs-code-modes-hook
                    (lambda () (linum-mode 1)))


