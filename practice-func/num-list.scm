(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))


(define num-list
  (lambda (n m)
    (cond
      ((zero? m ) '())
      ((= n m) (cons n '()))
      ((> n m) '())
      (else (cons n (num-list (add1 n) m))))))


(print (num-list 0 5))
(print (num-list 4 0))
(print (num-list 20 20))
(print (num-list 55 20))
(print (num-list 20 100))
