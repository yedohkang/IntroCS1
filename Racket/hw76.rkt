;  hw76
;  "Yedoh Kang" <kang.yedoh@gmail.com> period06

(define activity
  (lambda (weekday? eight-four?)  
    (if weekday?
        (if eight-four?
            "school"
            "Facebook")
        (if eight-four?
            "sleep"
            "YouTube")
        )
    )) ; end of lambda and define
; tests
(display (activity #t #t))
(display " ...should be school") (newline)

(display (activity #t #f))
(display " ...should be Facebook") (newline)

(display (activity #f #t))
(display " ...should be sleep") (newline)

(display (activity #f #f))
(display " ...should be YouTube") (newline)

(display "-----------------") (newline) (newline)
