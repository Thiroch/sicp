#lang sicp
(#%require "../src/1.12.scm")

(define (assert name expected actual)
  (display name)
  (if (= expected actual)
      (display "Pass\n")
      (display "Fail\n")))

(assert "pascal row=1, column=1: " 1 (pascal 1 1))

(assert "pascal row=2, column=1: " 1 (pascal 2 1))
(assert "pascal row=2, column=2: " 1 (pascal 2 2))

(assert "pascal row=3, column=1: " 1 (pascal 3 1))
(assert "pascal row=3, column=2: " 2 (pascal 3 2))
(assert "pascal row=3, column=3: " 1 (pascal 3 3))

(assert "pascal row=5, column=1: " 1 (pascal 5 1))
(assert "pascal row=5, column=2: " 4 (pascal 5 2))
(assert "pascal row=5, column=3: " 6 (pascal 5 3))
(assert "pascal row=5, column=4: " 4 (pascal 5 4))
(assert "pascal row=5, column=5: " 1 (pascal 5 5))
