#lang sicp
(#%provide f-recursive f-iterative)

(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1))
                 (* 2 (f-recursive (- n 2)))
                 (* 3 (f-recursive (- n 3)))))))

(define (f-iterative n)
  (define (f f1 f2 f3) (+ f1 (* f2 2) (* f3 3)))
  (define (f-iter f1 f2 f3 m)
    (cond ((= n m) (f f1 f2 f3))
          (else (f-iter (f f1 f2 f3) f1 f2 (+ m 1)))))
  (cond ((< n 3) n)
        (else (f-iter 2 1 0 3))))