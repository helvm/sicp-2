(load "../ch1/utils.scm")
(load "associative-table.scm")
(load "2.56pre.scm")
(load "2.56.scm")
(load "2.73pre.scm")
(load "2.73b.scm")
(load "2.73c.scm")
(install-deriv)
(install-deriv-exp)
(define e1 '(+ x y))
(define e2 '(+ (** x 3) (* 2 (** x 2))))