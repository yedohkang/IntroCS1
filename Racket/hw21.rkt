;  hw21
;  Yedoh Kang <kang.yedoh@gmail.com>
;  19-October-2015

; 1. circleArea_fromRadius
(display "circleArea_fromRadius") (newline)
(define circleArea_fromRadius
  (lambda (radius)
    (* 3.14159265 radius radius)
    )) 
;tests
; expecting 100*pi, which is about 314
(display  (circleArea_fromRadius 10) )(newline)
; expecting 9*pi, which is about 28
(display  (circleArea_fromRadius 3) )(newline)

; 2. circleArea_fromDiameter
(newline) (newline)
(display "circleArea_fromDiameter")
(define circleArea_fromDiameter
  (lambda (diameter)
    (circleArea_fromRadius (/ diameter 2))))
; tests
; test 1, expecting 12
(newline)
(display (circleArea_fromDiameter 4))
; test 2, expecting 50
(newline)
(display (circleArea_fromDiameter 8))

; annulusArea
(newline)
(newline)
(define circleArea_Radius
  (lambda (radius)
    (* 3.14 radius radius)))
(define annulusArea
  (lambda (biggerR smallerR)
    (- (circleArea_Radius biggerR) (circleArea_Radius smallerR))))
; test 1, expecting 35
(display (annulusArea 6 5))
(newline)
; test 2, expecting 242
(display (annulusArea 9 2))

; targetArea
(newline)
(newline)
(display "targetArea")
(newline)
(define targetArea
  (lambda (r)
    (+
     ;Largest Ring
     (- (* 3.14 (expt (* 6 r) 2)) (* 3.14 (expt (* 5 r) 2)))
     ;Medium Ring
     (- (* 3.14 (expt (* 4 r) 2)) (* 3.14 (expt (* 3 r) 2)))
     ;Smallest Ring
     (- (* 3.14 (expt (* 2 r) 2)) (* 3.14 (expt (* 1 r) 2)))
     )))
(display (targetArea 5))


























