(define listn (lambda (n)
                (if (= n 0)
                  '()
                  (cons n (listn (- n 1))))))


(define aand (lambda (a b) (if (a) (b) (= 1 2))))
(define oor (lambda (a b) (if (a) #t (b))))

(define mas (lambda (x y z)
              (if (not (shorterp y x))
                z
                (mas (mas (cdr x) y z)
                     (mas (cdr y) z x)
                     (mas (cdr z) x y)))))

(define shorterp
  (lambda (x y)
    (if (not (null? y))
      (if (null? x)
        #t
        (shorterp (cdr x)
                  (cdr y)))
      (= 1 2))))

(define l18 (listn 18))
(define l12 (listn 12))
(define  l6 (listn 6))

(mas l18 l12 l6)