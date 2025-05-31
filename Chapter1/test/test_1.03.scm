#lang sicp
(#%require "../src/1.03.scm")

(define (assert expected actual)
  (= expected actual))

(display "Tests for f\n" )
(assert 0 (f 0 0 0))
(assert 2 (f 1 1 1))
(assert 8 (f 2 2 2))
(assert 13 (f 1 2 3))
(assert 13 (f 3 2 1))
(assert 13 (f 3 1 2))
(assert 25 (f -3 -4 -5))
(assert 25 (f -5 -4 -3))
(assert 25 (f -5 -3 -4))
