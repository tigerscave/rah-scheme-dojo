(define atom? 
  (lambda (a) 
    (and (not (pair? a)) (not (null? a)))))


(print (atom? 'a))


(define reverse
  (lambda (ls acc)
    (cond 
      ((null? ls) acc)
      (else (reverse (cdr ls) (cons (car ls) acc))))))


(print (reverse '(a b c d) '()))


(define multiReverse
  (lambda (ls acc)
    (cond 
      ((null? ls) acc)
      ((atom? (car ls)) (reverse ls acc))
      (else (cons (reverse (car ls) (multiReverse (cdr ls) acc)))))))

(print (multiReverse '(a b c (d e f)) '()))



 +
