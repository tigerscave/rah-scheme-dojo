(print ((lambda (x) x) "Hello World"))

(define my-name
  (lambda (name)
    (lambda (name)
      (cons name '()))))

(print (my-name "Rahmat"))