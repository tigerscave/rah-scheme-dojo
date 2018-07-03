

(define rember-f
    (lambda (test?)
        (lambda (a lat)
            (cond 
                ((null? lat) '())
                ((test? a (car lat)) (cdr lat))
                (else (cons (car lat)
                    ((rember-f test?) a (cdr lat))))))))

(print ((rember-f eq?) 'a '(b a c)))