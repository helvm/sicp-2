(load "2.86.test.scm")
(load "polynomial-package-dense-sparse.scm")
(define tower '(integer rational real complex polynomial))
(install-polynomial-package)
(load "2.88a.scm")
(install-dense-termlist-package)
(install-sparse-termlist-package)

(put 'no-drop? 'div true)

(define a (make-polynomial 'x '(dense 1 2 0 3 -2 -5)))
(define a1 (make-polynomial 'y '(dense 1 2 0 3 -2 -5)))
(define b (make-polynomial 'x '(sparse (100 1) (2 2) (0 1))))

(define p1 (make-polynomial 'x '(sparse (2 1) (1 2) (0 1))))
(define p2 (make-polynomial 'x `(dense 1 0 ,(make-rational 1 2) ,(make-rational 5 8))))

(define p3 (make-polynomial 'x '(dense 1 2 0 3 -2 -5)))
(define p4 (make-polynomial 'x '(dense 1 0 0 0 0 0 0 0 0 2 1)))

(define p6 (make-polynomial 'x '(dense 1 0 0 0 0 -1)))
(define p7 (make-polynomial 'x '(dense 1 0 -1)))
(define p8 (make-polynomial 'x '(sparse (5 1) (0 -1))))
(define p9 (make-polynomial 'x '(sparse (2 1) (0 -1))))

; Multivariate polynomials.
(define c (make-polynomial 'y '(sparse (100 1) (2 2) (0 1))))
(define d (make-polynomial 'z `(dense 1 ,a1 ,p7)))
(define e (make-polynomial 'y `(dense ,p1 ,a ,b ,(make-rational 3 2))))
(define f (make-polynomial 't `(dense ,e 0 0)))

(load "2.93.scm")
(load "2.93sup.scm")
(install-rational-package)
(define p1 (make-polynomial 'x '(sparse (2 1) (0 1))))
(define p2 (make-polynomial 'x '(sparse (3 1) (0 1))))
(define rf (make-rational p2 p1))

; Exercise 2.94
(put 'gcd '(integer integer) gcd)
(define p1 (make-polynomial 'x '(sparse (4 1) (3 -1) (2 -2) (1 2))))
(define p2 (make-polynomial 'x '(sparse (3 1) (1 -1))))
