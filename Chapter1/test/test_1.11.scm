#lang sicp
(#%require "../src/1.11.scm")

(define (assert expected actual)
  (= expected actual))

; n < 3
(assert 0 (f-recursive 0))
(assert 1 (f-recursive 1))
(assert 2 (f-recursive 2))

; n = 3
(assert 4 (f-recursive 3))

; n > 3
(assert 11 (f-recursive 4))
(assert 25 (f-recursive 5))
(assert 59 (f-recursive 6))
(assert 142 (f-recursive 7))
(assert 335 (f-recursive 8))
(assert 796 (f-recursive 9))
(assert 1892 (f-recursive 10))

; n < 3
(assert 0 (f-iterative 0))
(assert 1 (f-iterative 1))
(assert 2 (f-iterative 2))

; n = 3
(assert 4 (f-iterative 3))

; n > 3
(assert 11 (f-iterative 4))
(assert 25 (f-iterative 5))
(assert 59 (f-iterative 6))
(assert 142 (f-iterative 7))
(assert 335 (f-iterative 8))
(assert 796 (f-iterative 9))
(assert 1892 (f-iterative 10))