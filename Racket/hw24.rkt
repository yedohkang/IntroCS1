; Yedoh Kang <kang.yedoh@gmail.com>
; hw 24 22-10-2015

(define getGoF
  (lambda (sophs)
    (quotient sophs 5)
    ))
(define units
  (lambda (sophs)
    (modulo sophs 5)
    ))
(define getGoFGoF
  (lambda (sophs)
    (quotient (getGoF sophs) 5)
    ))
(define getGoFExcludedFromTheGofGof
  (lambda (sophs)
    (modulo (getGoF sophs) 5)
    ))
(define getGoFGoFGoF
  (lambda (sophs)
    (quotient (getGoFGoF sophs) 5)))
(define GoFExcludedFromTheGofGofGof
  (lambda (sophs)
    (modulo (getGoFGoF sophs) 5)))
(define getGoFGoFGoFGoF
  (lambda (sophs)
    (quotient (getGoFGoFGoF sophs) 5)))
(define GoFExcludedFromTheGofGofGofGof
  (lambda (sophs)
    (modulo (getGoFGoFGoF sophs) 5)))

(display (getGoF 863))