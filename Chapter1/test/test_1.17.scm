#lang sicp
(#%require "../src/1.17.scm")

(define (assert name expected actual)
  (display name)
  (if (= expected actual)
      (display "Pass\n")
      (display "Fail\n")))

(assert "fast-* multiplier=0, multiplicand=0: " 0 (fast-* 0 0))
(assert "fast-* multiplier=1, multiplicand=0: " 0 (fast-* 1 0))
(assert "fast-* multiplier=5, multiplicand=0: " 0 (fast-* 5 0))

(assert "fast-* multiplier=1, multiplicand=2: " 2 (fast-* 1 2))
(assert "fast-* multiplier=1, multiplicand=3: " 3 (fast-* 1 3))
(assert "fast-* multiplier=1, multiplicand=4: " 4 (fast-* 1 4))

(assert "fast-* multiplier=2, multiplicand=1: " 2 (fast-* 2 1))
(assert "fast-* multiplier=3, multiplicand=1: " 3 (fast-* 3 1))
(assert "fast-* multiplier=4, multiplicand=1: " 4 (fast-* 4 1))

(assert "fast-* multiplier=2, multiplicand=3: " 6 (fast-* 2 3))
(assert "fast-* multiplier=3, multiplicand=4: " 12 (fast-* 3 4))
(assert "fast-* multiplier=4, multiplicand=5: " 20 (fast-* 4 5))

(assert "fast-* multiplier=20, multiplicand=30: " 600 (fast-* 20 30))
(assert "fast-* multiplier=12, multiplicand=34: " 408 (fast-* 12 34))
(assert "fast-* multiplier=42, multiplicand=42: " 1764 (fast-* 42 42))
