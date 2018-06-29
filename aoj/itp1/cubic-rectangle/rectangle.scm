(define area
  (lambda (l)
    (* (car l) (car (cdr l))))) 

(print (area '(3 5)))  

(define perimeter
  (lambda (l)
    (cons (* 2 (+ (car l) (car (cdr l)))) ()))) 

(print (perimeter '(3 5))) 

(define rectangle
  (lambda (l)
      (cons (area l) (perimeter l))))



(define first
  (lambda (l)
    (car l)))

(define seccond
  (lambda (l)
    (car (cdr l))))

(define build 
  (lambda (s1 s2)
    (cons s1 (cons s2 '()))))

(define area
  (lambda (l)
    (* (first l) (seccond l))))

(define perimeter
  (lambda (l)
    (* 2 (+ (first l) (seccond l)))))

(define rectangle
  (lambda (l)
      (build (area l) (perimeter l))))

(print "---rectangle '(3 5) ----- ")
(print (rectangle '(3 5))) 
  (print "---rectangle '(5 7) ----- ")
(print (rectangle '(5 7))) 
