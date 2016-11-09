; hw#31
; Yedoh Kang <kang.yedoh@gmail.com> period06
; worked with --
; help from --
; time started
; time ended

; 0
(display "#0 max3, revisited") (newline) (newline)
(define max3
  (lambda (x y z)
    (if
     (and (>= x y) (>= x z))
     x
     (if
      (and (>= y x) (>= y z))
      y
      (if
       (and (>= z x) (>= z y))
       z
       ))))) ; end of lambda and define
; tests
(display (max3 1 2 3))
(display "..... should be 3") (newline)
(display (max3 1 3 2))
(display "..... should be 3") (newline)
(display (max3 2 1 3))
(display "..... should be 3") (newline)
(display (max3 2 3 1))
(display "..... should be 3") (newline)
(display (max3 3 1 2))
(display "..... should be 3") (newline)
(display (max3 3 2 1))
(display "..... should be 3") (newline)
(display (max3 1 1 2))
(display "..... should be 2") (newline)
(display (max3 1 2 1))
(display "..... should be 2") (newline)
(display (max3 2 1 1))
(display "..... should be 2") (newline)
(display (max3 1 2 2))
(display "..... should be 2") (newline)
(display (max3 2 1 2))
(display "..... should be 2") (newline)
(display (max3 2 2 1))
(display "..... should be 2") (newline)
(display (max3 2 2 2))
(display "..... should be 2") (newline) (newline)
(display "--------------------------") (newline) (newline)
;2
(display "#3 taxes with cond") (newline) (newline)
(define bracket
  (lambda (taxableIncome)
    (cond
      ((and (>= taxableIncome 0) (<= taxableIncome 9075)) 0.1)
      ((<= taxableIncome 36900) 0.15)
      ((<= taxableIncome 89350) 0.25)
      ((<= taxableIncome 186350) 0.28)
      ((<= taxableIncome 405100) 0.33)
      ((<= taxableIncome 406750) 0.35)
      (else 0.396)
      ))) ; end of lambda and define
; tests
(display (bracket 0))
(display "..... should be 0.1") (newline)
(display (bracket 9075))
(display "..... should be 0.1") (newline)
(display (bracket 9076))
(display "..... should be 0.15") (newline)
(display (bracket 36900))
(display "..... should be 0.15") (newline)
(display (bracket 36901))
(display "..... should be 0.25") (newline)
(display (bracket 89350))
(display "..... should be 0.25") (newline)
(display (bracket 89351))
(display "..... should be 0.28") (newline)
(display (bracket 186350))
(display "..... should be 0.28") (newline)
(display (bracket 186351))
(display "..... should be 0.33") (newline)
(display (bracket 405100))
(display "..... should be 0.33") (newline)
(display (bracket 405101))
(display "..... should be 0.35") (newline)
(display (bracket 406750))
(display "..... should be 0.35") (newline)
(display (bracket 406751))
(display "..... should be 0.396") (newline)
(display (bracket 500000))
(display "..... should be 0.396") (newline)

      
      
