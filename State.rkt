;State
;gonna do the easy list because of time constraints
;need state_lookup returns value
;need state_assign updates value or adds if it does not exist
;might need state_remove to remove unneeded values?

;state_lookup
;passed state & variable, returns value
;returns null if variable not assigned
(define state_lookup
  (lambda (l x)
    (cond
      ((null? l) null)
      ((eq? (car (car l)) x) (cdr (car l)))
      (else (state_lookup (cdr l) x)))))


(define myappend
  (lambda (l1 l2)
    (cond
      ((null? l1) l2)
      (else (cons (car l1) (myappend (cdr l1) l2))))))


(define (list-set! list k val)
    (if (zero? k)
        (set-car! list val)
        (list-set! (cdr list) (- k 1) val)))

;state_assign
;takes state variable and value
;looks up variable, if null adds the variable value pair to the state if not updates the value
(define state_append
  (lambda (state l)
    (cond
      ((null? state_lookup(state (car l))) myappend( state l))
      ((eq? (car (car state)) (car l)) (myappend (list-set! (car state) 1 (cdr l)) (cdr state)))
      (else (myappend (car state) (state_append (cdr state) l))))))