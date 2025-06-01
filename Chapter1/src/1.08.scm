#lang sicp
(#%provide cbrt)

(define (square x)
  (* x x))
(define (average x y)
  (/ (+ x y) 2))

(define (cbrt x)
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess) ) 3))
  (define (cbrt-iter guess x)
    (define new-guess (improve guess x))
    (if (good-enough? guess new-guess)
        guess
        (cbrt-iter new-guess x)))

  (define (good-enough? guess new-guess)
    (< (abs (- guess new-guess)) (* guess 0.001)))

  (cbrt-iter 1.0 x))
