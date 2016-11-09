; hw29
; Yedoh Kang <kang.yedoh@gmail.com> period06
; worked with- Tymur Kholodnyak
; help from --
; time started: 22:18
; time ended: 22:40

; 1. circleArea_fromRadius
(display "1. circleArea_fromRadius") (newline) (newline)
(define circleArea_fromRadius 
  (lambda (radius)
    (display "   in circleArea_fromRadius") (newline)
    (display "      radius = ")
    (display radius) (newline)
    (* 3 (expt radius 2)) ; use 3 to approximate pi
    ))
; tests
(display (circleArea_fromRadius 5))  ;expecting 75
(newline)(newline)
(display (circleArea_fromRadius 10))  ;expecting 300
(newline)(newline)
(display "-----------------") (newline) (newline)


; 2. circleArea_fromDiameter
(display "2. circleArea_fromDiameter") (newline) (newline)
(define circleArea_fromDiameter
  (lambda (diameter)
    (display "   in circleArea_fromDiameter") (newline)
    (display "      diameter= ")
    (display diameter) (newline)
    (circleArea_fromRadius (/ diameter 2))
    ))
(display (circleArea_fromDiameter 10))(newline)(newline)
(display (circleArea_fromDiameter 20))(newline)(newline)
(display "-----------------") (newline) (newline)


; 3. annulus area
(display "3. annulus area") (newline)(newline)
(define annulusArea
  (lambda (innerRadius outerRadius)
    (display "   in annulusArea") (newline)
    (display "      innerRadius = ")
    (display innerRadius) (newline)
    (display "      outerRadius = ")
    (display outerRadius) (newline)
    (- (circleArea_fromRadius outerRadius)
       (circleArea_fromRadius innerRadius))
    ))

; tests
(display (annulusArea 1 2)) ; expecting 3 * pi, ~9.3
(newline)(newline)
(display (annulusArea 2 3)) ; expecting 5 * pi, ~15.5
(newline)(newline)
(display "-----------------") (newline) (newline)


; 4. target area
(display "4. targetArea ") (newline)
(define targetArea
  (lambda (smallestRadius)
    (display "   in targetArea")(newline)
    (display "      smallestRadius = ")
    (display smallestRadius) (newline)
    (+ (annulusArea      smallestRadius  (* 2 smallestRadius))
       (annulusArea (* 3 smallestRadius) (* 4 smallestRadius))
       (annulusArea (* 5 smallestRadius) (* 6 smallestRadius))
       )
    )) ; end of lambda and define
(display  (targetArea 1) )(newline)(newline) 
(display "-----------------") (newline) (newline)