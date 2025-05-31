#lang sicp
(#%provide square
           f)

(define (square x)
  (* x x))

(define (f a b c)
  (+ (square b) (square c)))