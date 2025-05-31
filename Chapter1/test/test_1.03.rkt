#lang sicp
(#%require "../src/1.03.rkt")

(define (assert expected actual)
  (= expected actual))

(display "Tests for f\n" )
(assert 0 (f 0 0 0))