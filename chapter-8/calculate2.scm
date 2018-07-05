

(define calculate2
  (lambda (test? x y)
    (test? x y)))


(print (calculate2 + 4 5))
(print (calculate2 * 4 5))
(print (calculate2 mod 4 5))

(define sub1
  (lambda (n)
    (- n 1)))

(define pow
  (lambda (n1 n2)
    (cond 
      ((zero? n2) 1)
      (else (* n1 (pow n1 (sub1 n2)))))))

(print (pow 2 4))
