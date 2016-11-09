; hw#40
; Yedoh Kang <kang.yedoh@gmail.com> period06
; time started
; time ended

; 1
(display "#1 rev3_theOtherWay") (newline)
(define rev3_theOtherWay
  (lambda (L)
    (reverse L)
    )) ; end of lambda and define
(display (rev3_theOtherWay '(backward ran sentences)))
; I prefer the one with the reverse function, but for testing
; purposes and such, I would prefer the car and cdr method.