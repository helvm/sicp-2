(define (make-from-mag-ang r a)
  (define (dispatch op)
    (cond ((eq? op 'real-part) (* r (cos a)))
          ((eq? op 'imag-part) (* r (sin a)))
          ((eq? op 'angle) a)
          ((eq? op 'magnitude) r)
          (else
            (error "Unknown op -- MAKE-FROM-MAG-ANG" op))))
  dispatch)