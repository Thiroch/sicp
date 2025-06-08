#lang sicp
(#%provide pow fib-approx fib)

; Copied improved-sqrt from 1.07.scm
(define (average x y)
  (/ (+ x y) 2))
(define (sqrt x)
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (define new-guess (improve guess x))
    (if (good-enough? guess new-guess)
        guess
        (sqrt-iter new-guess x)))

  (define (good-enough? guess new-guess)
    (< (abs (- guess new-guess)) (* guess 0.0000001))) ; increased accuracy

  (sqrt-iter 1.0 x))

(define (pow base exp)
  (define (pow-iter base exp result)
    (cond ((= exp 0) result)
          (else (pow-iter base (- exp 1) (* result base)))))
  (pow-iter base exp 1))

(define (fib-approx n)
  (define phi (/ (+ 1 (sqrt 5)) 2))
  (/ (pow phi n) (sqrt 5)))

(define (fib n)
  (define phi (/ (+ 1 (sqrt 5)) 2))
  (define psi (/ (- 1 (sqrt 5)) 2))
  (/ (- (pow phi n) (pow psi n)) (sqrt 5)))
