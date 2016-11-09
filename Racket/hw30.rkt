; hw#30
; Yedoh Kang <kang.yedoh@gmail.com> period06
; worked with --
; help from --
; time started- 16:30
; time ended- 5:10

(display "#1 three part invention") (newline) (newline)
(define three
  (lambda (w)
    (if (< w 0)
        -1
        (if (and (>= w 0) (<= w 4))
            3.5
            7)
        ))) ; end of lambda and define
; tests
(display (three -2))
(display "..... should be -1") (newline)
(display (three 2))
(display "..... should be 3.5") (newline)
(display (three 5))
(display "..... should be 7") (newline) (newline)

(display "--------------------------") (newline) (newline)

(display "#2 taxes") (newline) (newline)
(define bracket
  (lambda (taxableIncome)
    (if (and (>= taxableIncome 0) (<= taxableIncome 9075))
        0.1
        (if (<= taxableIncome 36900)
            0.15
            (if (<= taxableIncome 89350)
                0.25
                (if (<= taxableIncome 186350)
                    0.28
                    (if (<= taxableIncome 405100)
                        0.33
                        (if (<= taxableIncome 406750)
                            0.35
                            0.396
                            )
                        )
                    )
                )
            )
        )
    )
  ) ; end of define and lambda
; tests
(display (bracket 0))
(display "..... should be 0.1") (newline)
(display (bracket 9075))
(display "..... should be 0.1") (newline)
(display (bracket 9076))
(display "..... should be 0.15") (newline)
(display (bracket 406751))
(display "..... should be 0.396") (newline) (newline)

(display "---------------------------") (newline) (newline)

(display "#3 max3") (newline) (newline)
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
       ))))) ; end of define and lambda
(display (max3 16 17 18))
(display "..... should be 18")(newline)
(display (max3 6 6 7))
(display "..... should be 7") (newline)
(display (max3 6 7 7))
(display "..... should be 7") (newline)
                       
