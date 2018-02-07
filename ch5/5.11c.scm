(define (make-register name)
  (let ((contents '*unassigned*)
        (stack (make-stack)))
    (define (dispatch message)
      (cond ((eq? message 'get) contents)
            ((eq? message 'set)
             (lambda (value)
               (set! contents value)))
            ((eq? message 'stack) stack)
            ((eq? message 'initialize-stack)
             (stack 'initialize))
            (else
              (error "Unknown request: REGISTER" message))))
    dispatch))

(define (make-save inst machine pc)
  (let* ((reg-name (stack-inst-reg-name inst))
         (reg (get-register machine reg-name))
         (stack (reg 'stack)))
    (lambda ()
      (push stack (get-contents reg))
      (advance-pc pc))))

(define (make-restore inst machine pc)
  (let* ((reg-name (stack-inst-reg-name inst))
         (reg (get-register machine reg-name))
         (stack (reg 'stack)))
    (lambda ()
      (set-contents! reg (pop stack))
      (advance-pc pc))))