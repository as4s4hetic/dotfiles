;; -*-lisp-*-

(in-package :stumpwm)

;; change the prefix key to something else
(set-prefix-key (kbd "C-z"))

;; prompt the user for an interactive command. The first arg is an
;; optional initial contents.
(defcommand colon1 (&optional (initial "")) (:rest)
  (let ((cmd (read-one-line (current-screen) ": " :initial-input initial)))
    (when cmd
      (eval-command cmd t))))

;; Lock screen
(define-key *root-map* (kbd "C-l") "exec slock")
;; Firefox
(define-key *root-map* (kbd "b") "exec firefox")
;; Alacritty
(define-key *root-map* (kbd "c") "exec alacritty")
(define-key *root-map* (kbd "C-c") "exec alacritty")
;; Shell
(define-key *root-map* (kbd "n") "exec")
;; Scrot
(define-key *root-map* (kbd "C-x") "exec flameshot gui")


;; Message window font
(set-font "-xos4-terminus-large-r-normal--14-140-72-72-c-80-iso8859-15")

;; Balance frames
(define-key *root-map* (kbd "B") "balance-frames")

;; register mouse click
(setf *mouse-focus-policy* :click)
