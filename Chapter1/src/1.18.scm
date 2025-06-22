#lang sicp
(#%provide fast-*)

(define (double n) (* n 2))
(define (halve n) (/ n 2))

(define (fast-* a b)
  (define (fast-*-iter a b result)
    (cond ((= b 0) result)
          ((even? b) (fast-*-iter (double a) (halve b) result))
          (else (fast-*-iter a (- b 1) (+ result a)))))
  (fast-*-iter a b 0))
