(define member?
  (lambda (a lat)
    (cond 
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
        (member? a (cdr lat)))))))

(define intersect 
  (lambda (set1 set2)
    (cond 
      ((null? set1) '())
      ((member? (car set1) set2)
        (cons (car set1)
         (intersect (cdr set1) set2)))
         (else (intersect (cdr set1) set2)))))

(define intersectall
  (lambda (l)
    (cond 
      ((null? (cdr l)) (car l))
      (else (intersect (car l) 
        (intersectall (cdr l)))))))


(print (intersectall '((a b c))))
(print (intersectall '((1 2 3) (1 3 4) (3 1 5))))
