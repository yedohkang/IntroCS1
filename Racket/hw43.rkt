; hw#43
; Yedoh Kang <kang.yedoh@gmail.com> period06
; time started
; time ended

; 0
(display "0. fixhw42") (newline)
; if n > 1
; tell monk n-1 to move top n-1 disks from source to the spare
; move the top disk from source to destination
; tell monk n-1 to move top n-1 disks from spare to destination
; otherwise
; move the top disk from the source to the destination

; 1
(display "1. shorthand for creating procedures") (newline)
(define (rev3 L) (list (caddr L) (cadr L) (car L)))
(display (rev3 '(backward ran sentences))) (newline)
(define (rev3_theOtherWay L) (reverse L))
(display (rev3_theOtherWay '(backward ran sentences)))
