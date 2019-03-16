(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define multiple
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (+ n (multiple n (sub1 m)))))))

(print "------multiple")
(print (multiple 5 3))

(define divid
  (lambda (n m)
    (cond
      ((< n m) 0)
      (else (add1 (divid (- n m) m))))))


(print "------divid")
(print (divid 23 4))

(define even?
  (lambda (n)
    (= (multiple (divid n 2) 2) n)))

(print (even? 7))
(print (even? 12))


(define evens-only*
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond
          ((even? (car l)) (cons (car l)
            (evens-only* (cdr l))))
          (else (evens-only* (cdr l)))))
      (else (cons
        (evens-only* (car l))
          (evens-only* (cdr l)))))))

(print (evens-only* '(((9 1 2 8) 3 10 ((9 9) 7 6) 2))))


(define rm-even*
  (lambda (ls)
    (cond
      ((null? ls) (quote ()))
      ((atom? (car ls))
        (cond
          ((even? (car ls)) (rm-even* (cdr ls)))
          (else
            (cons (car ls) (rm-even* (cdr ls))))))
      (else (cons (rm-even* (car ls)) (rm-even* (cdr ls)))))))

(print (rm-even* '(1 2 3 4 5 6)))

(print (rm-even* '(1 2 (3 4 5) 6 7)))

(print (rm-even* '(1 (2 (3 4 5) 6 7))))
