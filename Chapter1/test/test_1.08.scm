#lang sicp
(#%require "../src/1.08.scm")

(define (assert-close-enough expected actual)
  ; margin of error is 1% of the expected value
  (define margin (* expected 0.01))

  (< (abs (- expected actual)) margin))

(assert-close-enough 1 (cbrt 1))
(assert-close-enough 2 (cbrt 8))
(assert-close-enough 3 (cbrt 27))
(assert-close-enough 42 (cbrt 74088))
(assert-close-enough 99 (cbrt 970299))

(assert-close-enough 2.15443469 (cbrt 10))
(assert-close-enough 5.848035476 (cbrt 200))
(assert-close-enough 14.4224957 (cbrt 3000))

(assert-close-enough 0.4641588834 (cbrt 0.1))
(assert-close-enough 0.2714417617 (cbrt 0.02))
(assert-close-enough 0.144224957 (cbrt 0.003))

(assert-close-enough 1000 (cbrt 1000000000))
(assert-close-enough 0.01 (cbrt 0.000001))
(assert-close-enough 0.004641588834 (cbrt 0.0000001))
