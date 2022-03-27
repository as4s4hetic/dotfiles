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
(define-key *root-map* (kbd "C-l") "exec xlock")
;; Firefox
(define-key *root-map* (kbd "b") "exec firefox")
;; Shell
(define-key *root-map* (kbd "n") "exec")

;; Message window font
(set-font "-xos4-terminus-large-r-normal--14-140-72-72-c-80-iso8859-15")

;; register mouse click
(setf *mouse-focus-policy* :click)
