#lang sicp
(#%require "../src/1.16.scm")

(define (assert name expected actual)
  (display name)
  (if (= expected actual)
      (display "Pass\n")
      (display "Fail\n")))

(assert "fast-expt base=0, power=0: " 1 (fast-expt 0 0))
(assert "fast-expt base=1, power=0: " 1 (fast-expt 1 0))
(assert "fast-expt base=5, power=0: " 1 (fast-expt 5 0))
(assert "fast-expt base=10, power=0: " 1 (fast-expt 10 0))

(assert "fast-expt base=2, power=1: " 2 (fast-expt 2 1))
(assert "fast-expt base=2, power=2: " 4 (fast-expt 2 2))
(assert "fast-expt base=2, power=3: " 8 (fast-expt 2 3))

(assert "fast-expt base=3, power=1: " 3 (fast-expt 3 1))
(assert "fast-expt base=3, power=2: " 9 (fast-expt 3 2))
(assert "fast-expt base=3, power=3: " 27 (fast-expt 3 3))

(assert "fast-expt base=2, power=10: " 1024 (fast-expt 2 10))
(assert "fast-expt base=3, power=10: " 59049 (fast-expt 3 10))
(assert "fast-expt base=4, power=10: " 1048576 (fast-expt 4 10))
