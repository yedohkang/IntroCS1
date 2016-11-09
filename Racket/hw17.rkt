;Yedoh Kang
;Pd 6
;HW 17
;kang.yedoh@gmail.com

;circleArea
(define pi 3.14)
(define circleArea
  (lambda
      (pi radius)
    (* pi (expt radius 2))
    )
  )
(newline)
;test one
(display (circleArea pi 5))
(newline)
;test two
(display (circleArea pi 7))

;oneRoot
(define oneRoot
  (lambda
      (a b c)
    (/ (+ (- b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))
    )
  )
;test one
(newline)
(newline)
(display (oneRoot 2.71828 7.64 1.616))

;test two
(newline)
(display (oneRoot -0.618 1.618 1.732))
