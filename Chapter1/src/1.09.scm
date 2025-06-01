#lang sicp
(define (+ a b)
(if (= a 0) b (inc (+ (dec a) b))))

; Commented out because in Racket,
; you can't define the same identifier twice. 
;(define (+ a b)
;(if (= a 0) b (+ (dec a) (inc b))))
