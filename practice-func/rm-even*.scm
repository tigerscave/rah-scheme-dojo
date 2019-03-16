(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(print (atom? '()))

(define even?
  (lambda (n)
    (= (* (/ n 2) 2) n)))


(print (even? 11))

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
      (else (cons (car ls) (cdr ls))))))

(print (rm-even* '(1 2 3 4)))

(print (rm-even* '(1 2 (3 4 5) 3 4)))

(print (rm-even* '(1 (2 (3 4 5) 3 4))))
