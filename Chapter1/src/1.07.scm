#lang sicp

(define (square x)
  (* x x))
(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (display guess) (display "\n") ; display current guess
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

  (sqrt-iter 1.0 x))

; Square root of 0.0001 should be 0.01
; but gets an wrong answer
(display "(sqrt) Square root of 0.0001\n")
(sqrt 0.0001)

; Tries to calculate square root of 10000000000000
; but causes an infinite loop
;(display "(sqrt) Square root of 10000000000000\n")
;(sqrt 10000000000000)

(define (improved-sqrt x)
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (display guess) (display "\n") ; display current guess
    (define new-guess (improve guess x))
    (if (good-enough? guess new-guess)
        guess
        (sqrt-iter new-guess x)))

  (define (good-enough? guess new-guess)
    (< (abs (- guess new-guess)) (* guess 0.001)))

  (sqrt-iter 1.0 x))

; Square root of 0.0001 should be 0.01
; and this improved-sqrt returns relatively close number
(display "(improved-sqrt) Square root of 0.0001\n")
(improved-sqrt 0.0001)

; Tries to calculate square root of 10000000000000
; and this improved-sqrt returns value without causing an infinite loop
(display "(improved-sqrt) Square root of 10000000000000\n")
(improved-sqrt 10000000000000)