(define (print-inst inst)
  (let ((label (instruction-label inst)))
    (if (not (null? label))
      (begin
        (display "label: ")
        (display (instruction-label inst))
        (newline))))
  (display "    ")
  (display (instruction-text inst))
  (newline))
