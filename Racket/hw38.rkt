; hw#38
; Yedoh Kang <kang.yedoh@gmail.com> period06
; time started- 13:00
; time ended- 13:15

(define M '(a (b c) d ((e f) g h) i))

(display "#1 3 calls") (newline)
; The cdr function produces a list that is a copy of
; its list argument without that list's first element.
; Therefore
;      '((b c) d ((e f) g h) i)
; The car function produces a list that is its list
; argument with only the list's first element.
; Therefore
;      '((b c))
; The car function produces a list that is its list
; argument with only the list's first element.
; Therefore
;      'b
(display (car (car (cdr M)))) (newline)
(display "-----------------") (newline) (newline)

(display "#2 5 calls") (newline)
; The cdr function produces a list that is a copy of
; its list argument without that list's first element.
; Therefore
;      '((b c) d ((e f) g h) i)
; The cdr function produces a list that is a copy of
; its list argument without that list's first element.
; Therefore
;      '(d ((e f) g h) i)
; The cdr function produces a list that is a copy of
; its list argument without that list's first element.
; Therefore
;      '(((e f) g h) i)
; The car function produces a list that is its list
; argument with only the list's first element.
; Therefore
;      '((e f) g h)
; The car function produces a list that is its list
; argument with only the list's first element.
; Therefore
;      '(e f)
(display (car (car (cdr (cdr (cdr M))))))
(display "------------------------") (newline) (newline)

(display "#3 length") (newline)
; I predict (length M) will be 5.
(display (length M))




