#lang sicp
(#%require "../src/1.04.scm")

(define (assert expected actual)
  (= expected actual))

(display "Tests for a-plus-abs-b\n" )
(assert 10 (a-plus-abs-b 3 7))
(assert 5 (a-plus-abs-b 5 0))
(assert 17 (a-plus-abs-b 9 -8))

(assert 10 (a-plus-abs-b 7 3))
(assert 5 (a-plus-abs-b 0 5))
(assert 1 (a-plus-abs-b -8 9))

