; hw#77
; Yedoh Kang <kang.yedoh@gmail.com> period06
;
; 1 review Double Blind-Ninja Recursion
;
;(define recurse
;  (lambda (L)
;    (if (not (null? L))
;        (append
;         (list (car L))
;         (recurse (cdr L)))
;        '()
;        )
;    )) ; end of lambda and define
;(NOT EXACTLY SURE ABOUT THIS ONE) (I NEED CLARIFICATION)
;(define recurse
;  (lambda (n)
;    (if (not (= n 0))
;        (+ n (recurse (- n 1)))
;        0
;        )
;    )) ; end of lambda and define

; 2 finish a final's recursion <RLZ>
(define RLZ
  (lambda (L)
    (if (or (null? L) (not (= 0 (car L))))
        L
        (RLZ (cdr L)))
    ))
(display (RLZ '(0 0 0 2 3 0 1))) (newline)
(display (RLZ '(1 2 0 0 0))) (newline)
(display (RLZ '(0 0 0 0))) (newline)
(display (RLZ '())) (newline)