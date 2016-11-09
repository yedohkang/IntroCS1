; hw#65
; Yedoh Kang <kang.yedoh@gmail.com>

; 1 repeat repeat

(define repeat
  (lambda (value times)
    (if (= times 0)
        '()
        (append
         (list value)
         (repeat value (- times 1)))
        )
    )) ; end of lambda and define
; tests  [0b]
;base case(s)
(display (repeat '(nothing will come of nothing) 0))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (repeat 'single 1))
(display " ...should be (single)") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (repeat 'nicely 2))
(display " ...should be (nicely nicely)") (newline) 
(display "-----------------") (newline) (newline)