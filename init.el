(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit
                      starter-kit-ruby
                      starter-kit-js
                      starter-kit-lisp
                      evil
                      color-theme-sanityinc-solarized
                      color-theme-sanityinc-tomorrow
                      color-theme-monokai
                      color-theme-dawn-night
                      yasnippet)
  "A list of packages to ensure are installed at launch")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;; Bundle

(let ((bundle "~/.emacs.d/bundle"))
  (dolist (f (directory-files bundle))
    (let ((name (concat bundle "/" f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

(require 'evil)
(evil-mode 1)

(require 'powerline)
(powerline-default-theme)

(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow-night)

(require 'surround)
(global-surround-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

