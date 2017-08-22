(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (* range (random-real)))))

(define (estimate-integral P x1 x2 y1 y2 trials)
  (define (area-test)
    (let ((x (random-in-range x1 x2))
          (y (random-in-range y1 y2)))
      (P x y)))
  (* (- x2 x1)
     (- y2 y1)
     (monte-carlo trials area-test)))

(define (estimate-pi2 trials)
  (define (in-unit-circle? x y)
    (<= (+ (square x) (square y)) 1))
  (estimate-integral in-unit-circle? -1. 1. -1. 1. trials))
