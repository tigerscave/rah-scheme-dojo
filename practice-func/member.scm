(define add1
  (lambda (x)
    (+ x 1)))

(define eternity
  (lambda (x)
    (eternity x)))


; (define member?
;   (lambda (a lat)
;     (cond
;       ((null? lat) #f)
;       (else (or (eq? (car lat) a)
;         (member? a (cdr lat)))))))

; (print (member? 'a '(a b)))



(print "this is member")

(print (
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
        ((lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              (eternity (a (cdr lat))))))) a (cdr lat))))))
    'a '(a b)
))

(print "---")

(print
  (
    (
      (lambda (member?)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              (member? a (cdr lat)))))))
      (
        (lambda (member?)
          (lambda (a lat)
            (cond
              ((null? lat) #f)
              (else (or (eq? (car lat ) a)
                (member? a (cdr lat))))))
        )
        eternity
      )
    )
    'a
    '(a b c)
  )
)


(print (
  (
    (lambda (mk-member)
      (mk-member eternity))
      (lambda (member?)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              (member? a (cdr lat))))))))
      'a
      '(a b c d)
  )
)

(print (
  (
    (lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              (mk-member a (cdr lat))))))))
      'a
      '(a b c d)
  )
)

(print (
  (
    (lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              ((mk-member eternity) a (cdr lat))))))))
      'a
      '(a b c d)
  )
)


(print (
  (
    (lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              ((mk-member mk-member) a (cdr lat))))))))
      'a
      '(a b c d)
  )
)

; (print (
;   ((
;     (lambda (mk-member)
;       (mk-member mk-member))
;       (lambda (mk-member)
;         ((lambda (member?)
;           (lambda (a lat)
;             (cond
;               ((null? lat) #f)
;               (else (or (eq? (car lat) a)
;                 (member? a (cdr lat))))))))
;             (mk-member mk-member))))
;       'a
;       '(a b c d)
;   )
; )


(print (
  (
    (lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              ((lambda (x)
                ((mk-member mk-member) x)) a (cdr lat))))))))
      'a
      '(a b c d)
  )
)

(print (
  (
    (lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        ((lambda (member?)
          (lambda (a lat)
            (cond
              ((null? lat) #f)
              (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))
            (lambda (x)
              ((mk-member mk-member) x)))))
      'a
      '(a b c d)
  )
)


(print "this is final")

(print (
  ((lambda (mem)
    ((lambda (mk-member)
      (mk-member mk-member))
      (lambda (mk-member)
        (mem (lambda (x)
          ((mk-member mk-member) x))))))
    (lambda (member?)
      (lambda (a lat)
        (cond
          ((null? lat) #f)
          (else (or (eq? (car lat) a)
            (member? a (cdr lat))))))))
      'a
      '(a b c d)
  )
)


(define y
  (lambda (le)
    ((lambda (f)
      (f f))
      (lambda (f)
        (le (lambda (x)
          ((f f) x)))))))

(print
  (
    (y
      (lambda (member?)
        (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
              (member? a (cdr lat)))))))
    )
    'a
    '(a b c d)
  )
)
