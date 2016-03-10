(define (c n k)
  (cond ((or (> k n) (< k 0) (< n 0))
	 0)
	((or (= k 0) (= n k))
	 1)
	(else (+ (c (- n 1) k)
		 (c (- n 1) (- k 1))))))