#lang sicp
(#%require "../src/1.19.scm")

(define (assert name expected actual)
  (display name)
  (if (= expected actual)
      (display "Pass\n")
      (display "Fail\n")))

(assert "fib 1: " 1 (fib 1))
(assert "fib 2: " 1 (fib 2))
(assert "fib 3: " 2 (fib 3))
(assert "fib 4: " 3 (fib 4))
(assert "fib 5: " 5 (fib 5))
(assert "fib 6: " 8 (fib 6))
(assert "fib 7: " 13 (fib 7))

(assert "fib 10: " 55 (fib 10))
(assert "fib 20: " 6765 (fib 20))
