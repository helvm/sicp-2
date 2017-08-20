(put 'project '(rational)
     (lambda (r)
       (if (and (eq? (type-tag (numer r)) 'integer)
                (eq? (type-tag (denom r)) 'integer))
         (make-integer (quotient (numer r)
                                 (denom r)))
         0)))

(put 'equ? '(rational rational)
     (lambda (x y) (equ? (mul (numer x) (denom y))
                         (mul (numer y) (denom x)))))