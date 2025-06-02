#lang sicp
(#%require "../src/1.11.scm")

(define (assert expected actual)
  (= expected actual))

; n < 3
(assert 0 (f-recursive 0))
(assert 1 (f-recursive 1))
(assert 2 (f-recursive 2))
