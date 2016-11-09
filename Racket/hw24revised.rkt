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





