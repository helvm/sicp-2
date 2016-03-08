(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (display "Current approximation : ")
      (display next)
      (newline)
      (if (close-enough? guess next)
	next
	(try next))))
  (try first-guess))
