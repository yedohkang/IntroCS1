;  hw28
;  "Yedoh Kang" <kang.yedoh@gmail.com> period06
;   worked with --
;   help from Tymur Kholodnyak, Benjamin Shen
;   time started: 18:10
;   time ended: 18:50

(display "#1 improve autotip") (newline)
(define autotip 
  (lambda (party)
    (if
     (> party 8)
     0.18
     0)))  ; end of lambda and define
; tests
(display (autotip 10))
(display "..... should be 18%")(newline)
(display (autotip  2 ))
(display "..... should be 0")(newline)(newline)

(define autotip_dollars
  (lambda (party food)
    (+ (* food (autotip party)) food)
    )) ; end of lambda and define
; tests
(display (autotip_dollars 10 100))
(display "..... should be 118") (newline)
(display (autotip_dollars 20 200))
(display "..... should be 236") (newline)
(display (autotip_dollars 6 100))
(display "..... should be 100") (newline)
(display "--------------------------") (newline)

(display "#2 absolute value") (newline)
(define my-abs
  (lambda (number)
    (if (>= number 0)
        number
        (- number)
        ))) ; end of lambda and define
(display (my-abs -2))
(display "..... should be 2") (newline)
(display (my-abs 3))
(display "..... should be 3") (newline)
(display (my-abs 0))
(display "..... should be 0") (newline)
(display "-------------------------") (newline)
(display "#3 max2") (newline)
(define max2
  (lambda (num1 num2)
    (if
     (> num1 num2)
     num1
     num2
     ))) ; end of lambda and define
; tests
(display (max2 1 2))
(display "..... should be 2") (newline)
(display (max2 3 2))
(display "..... should be 3") (newline)
(display (max2 -2 3))
(display "..... should be 3") (newline)
(display "------------------------") (newline)

(display "#4 two part invention") (newline)
(define two-part_invention
  (lambda (chooser)
   (if
    (<= chooser 3)
    12
    (* 4 chooser)))) ; end of lambda and define
(display (two-part_invention 3))
(display "..... 12") (newline)
(display (two-part_invention -2))
(display "..... 12") (newline)
(display (two-part_invention 5))
(display "..... 20") (newline)
(display (two-part_invention 6))
(display "..... 24") (newline)

                   
     
          






























                  