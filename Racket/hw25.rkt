; hw
; Yedoh Kang <kang.yedoh@gmail.com> period06
; worked with Tymur Kholodnyak
; help from
; time started;

(display "0. cardinal numbers vs. ordinal numbers")
(newline)
(display "     a. A cardinal number is a number denoting quantity. Examples: one, two, three, etc.")
(newline)
(display "     b. An ordinal number is a number that defines a thing's position in a series.
                       Examples: first, second, third, etc.")
(newline)
(display "------------------------------------------------------------------")
(newline) (newline)

(display "1. Refine yesterday's solution") (newline)
(define getGoF
  (lambda (sophs)
    (quotient sophs 5)))
(display "number of teams: ")
(display (getGoF 863))
(newline)

(define units
  (lambda (sophs)
    (modulo sophs 5)))
(display "number of sophs not in a team: ")
(display (units 863))
(newline)

(define getGoFGoF
  (lambda (sophs)
    (quotient (getGoF sophs) 5)))
(display "number of conferences: ")
(display (getGoFGoF 863))
(newline)

(define GoFExcludedFromTheGofGof
  (lambda (sophs)
    (modulo (getGoF sophs) 5)))
(display "number of teams not in a conference: ")
(display (GoFExcludedFromTheGofGof 863))
(newline)

(define getGoFGoFGoF
  (lambda (sophs)
    (quotient (getGoFGoF sophs) 5)))
(display "number of leagues: ")
(display (getGoFGoFGoF 863))
(newline)

(define GoFGoFExcludedFromTheGofGofGoF
  (lambda (sophs)
    (modulo (getGoFGoF sophs) 5)))
(display "number of conferences not in a league: ")
(display (GoFGoFExcludedFromTheGofGofGoF 863))
(newline)

(define getGoFGoFGoFGoF
  (lambda (sophs)
    (quotient (getGoFGoFGoF sophs) 5)))
(display "number of superleagues: ")
(display (getGoFGoFGoFGoF 863))
(newline)

(define GoFGoFGoFExcludedFromTheGofGofGoFGoF
  (lambda (sophs)
    (modulo (getGoFGoFGoF sophs) 5)))
(display "number of leagues not in a superleague: ")
(display (GoFGoFGoFExcludedFromTheGofGofGoFGoF 5))
(newline)

(define getGoFGoFGoFGoFGoF
  (lambda (sophs)
    (quotient (getGoFGoFGoF sophs) 5)))
(display "number of superduperleagues: ")
(display (getGoFGoFGoFGoFGoF 863))
(newline)

(define GoFGoFGoFGoFExcludedFromTheGofGofGoFGoFGoF
  (lambda (sophs)
    (modulo (getGoFGoFGoFGoF sophs) 5)))
(display "number of superleague not in a superduperleague: ")
(display (GoFGoFGoFGoFExcludedFromTheGofGofGoFGoFGoF 863))

(newline)(newline) (display "---------------------------------------------") (newline)(newline)


(display "2. getDigit")
(newline)

(define getDigit
  (lambda (number)
    (quotient number (expt 10 2))))

(define nogetDigit
  (lambda (number)
    (modulo number (expt 10 2))))

(define getDigitDigit
  (lambda (number)
    (quotient (nogetDigit number) (expt 10 1))))

(define nonogetDigit
  (lambda (number)
    (modulo (nogetDigit number) (expt 10 1))))

(define getDigitDigitDigit
  (lambda (number)
    (quotient (nonogetDigit number) (expt 10 0))))

(display (getDigit 863))
(display (getDigitDigit 863))
(display (getDigitDigitDigit 863))
















  

