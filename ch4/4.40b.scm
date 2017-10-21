(define (multiple-dwelling4)
  (let ((cooper (amb 1 2 3 4 5))
        (miller (amb 1 2 3 4 5)))
    (require (not (= cooper 1)))
    (require (> miller cooper))
    (let ((fletcher (amb 1 2 3 4 5)))
      (require (not (= fletcher 1)))
      (require (not (= fletcher 5)))
      (require (not (= fletcher cooper)))
      (require (not (= fletcher miller)))
      (require (not (= (abs (- fletcher cooper)) 1)))
      (let ((smith (amb 1 2 3 4 5)))
        (require (not (= smith cooper)))
        (require (not (= smith miller)))
        (require (not (= smith fletcher)))
        (require (not (= (abs (- smith fletcher)) 1)))
        (let ((baker (amb 1 2 3 4 5)))
          (require (not (= baker 5)))
          (require (not (= baker cooper)))
          (require (not (= baker fletcher)))
          (require (not (= baker miller)))
          (require (not (= baker smith)))
          (list (list 'baker baker)
                (list 'cooper cooper)
                (list 'fletcher fletcher)
                (list 'miller miller)
                (list 'smith smith)))))))