(define (n-root n x)
  (let ((i (floor (/ (log n) (log 2)))))
    (fixed-point ((repeated average-damp i)
                  (lambda (y)
                    (/ x (expt y (- n 1)))))
                 2.0)))
