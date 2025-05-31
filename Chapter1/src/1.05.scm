#lang sicp
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; Commented out because it causes an infinite loop.
; (test 0 (p))
