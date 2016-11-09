; hw#73
; Yedoh Kang <kang.yedoh@gmail.com>

; 0 extract a list element

(define ONE '(a (b) c))
(display (car (cdr ONE))) (newline)
(display "...should be (b)") (newline)
(display (car (car (cdr ONE)))) (newline)
(display "...should be b") (newline) (newline)

(define TWO '(init later muchLater stillLater final))
(display (car (cdr (cdr (cdr (cdr TWO)))))) (newline)
(display "...should be final") (newline) (newline)

(define THREE '(((2)) ((cd) (d c a) (z x))))
(display (car (car (car THREE)))) (newline)
(display "...should be 2") (newline)
(display (car (cdr (car (cdr (Car (cdr THREE))))))) (newline)
(display "...should be c") (newline)
(display (car (car (car (cdr THREE))))) (newline)
(display "...should be cd") (newline) (newline)

(define FOUR '( () () (((aa) (ab) (a))) abc))
(display (car (car (car (cdr (cdr FOUR)))))) (newline)
(display "...should be (aa)") (newline)
(display (car (car (cdr (car (car (cdr (cdr FOUR)))))))) (newline)
(display "...should be ab") (newline)
(display (car (cdr (cdr (car (car (cdr (cdr FOUR)))))))) (newline)
(display "...should be (a)") (newline)
(display (car (cdr (cdr (cdr FOUR))))) (newline)
(display "...should be abc") (newline)


