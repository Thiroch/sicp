#lang sicp
(#%provide pascal)

(define (pascal row column)
  (cond ((or (= column 1) (= row column)) 1)
        (else (+ (pascal (- row 1) (- column 1))
                 (pascal (- row 1) column)))))
