#lang sicp
(#%require "../src/1.11.scm")

(define (assert name expected actual)
  (display name)
  (if (= expected actual)
      (display "Pass\n")
      (display "Fail\n")))

; n < 3
(assert "f-recursive n=0: " 0 (f-recursive 0))
(assert "f-recursive n=1: " 1 (f-recursive 1))
(assert "f-recursive n=2: " 2 (f-recursive 2))

; n = 3
(assert "f-recursive n=3: " 4 (f-recursive 3))

; n > 3
(assert "f-recursive n=4: " 11 (f-recursive 4))
(assert "f-recursive n=5: " 25 (f-recursive 5))
(assert "f-recursive n=6: " 59 (f-recursive 6))
(assert "f-recursive n=7: " 142 (f-recursive 7))
(assert "f-recursive n=8: " 335 (f-recursive 8))
(assert "f-recursive n=9: " 796 (f-recursive 9))
(assert "f-recursive n=10: " 1892 (f-recursive 10))

; n < 3
(assert "f-iterative n=0: " 0 (f-iterative 0))
(assert "f-iterative n=1: " 1 (f-iterative 1))
(assert "f-iterative n=2: " 2 (f-iterative 2))

; n = 3
(assert "f-iterative n=3: " 4 (f-iterative 3))

; n > 3
(assert "f-iterative n=4: " 11 (f-iterative 4))
(assert "f-iterative n=5: " 25 (f-iterative 5))
(assert "f-iterative n=6: " 59 (f-iterative 6))
(assert "f-iterative n=7: " 142 (f-iterative 7))
(assert "f-iterative n=8: " 335 (f-iterative 8))
(assert "f-iterative n=9: " 796 (f-iterative 9))
(assert "f-iterative n=10: " 1892 (f-iterative 10))