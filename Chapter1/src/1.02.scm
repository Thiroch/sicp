#lang sicp
(define expected (- (/ 37 150)))
(define actual
  (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
     (* 3 (- 6 2) (- 2 7))))
actual
(= expected actual)