(define (neg-terms L)
  (if (empty-termlist? L)
    (make-empty-termlist (type-tag L))
    (let ((first-term (first-term L)))
      (adjoin-term (make-term (order first-term)
                              (neg (coeff first-term)))
                   (neg-terms (rest-terms L))))))
(define (neg-poly p)
  (make-poly (variable p)
             (neg-terms (term-list p))))
