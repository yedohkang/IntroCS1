; hw#39
; Yedoh Kang <kang.yedoh@gmail.com> period06
; time started- 17:24
; time ended

; 0
(display "#0 State Definitions") (newline)
(display "list- a collection of elements") (newline)
(display "append- takes any number of lists as arguments,
          and returns a list with all of their elements")
(newline) (display "------------------------")(newline)

; 1
(display "#1 Explain how literals build lists") (newline)
; symbols for symbols
(define fname 'marvin)
(define lname 'gaye) 
; symbols for lists
(define m0 '(a b))
(define m1 '(0 1 2))
(define sub '(n (e  s) t))
; one atom, 12
(define atom 12)
; 1
; It would display (fname lname) <2>
(display "#1 should be...") (display '(fname lname))(newline)
; 2
; It would display (marvin gaye) <2>
(display "#2 should be...") (display (list fname lname)) (newline)
; 3
; It would display ((a b) (0 1 2)) <2>
(display "#3 should be...") (display (list m0 m1)) (newline)
; 4
; It would display (a b 0 1 2) <5>
(display "#4 should be...") (display (append m0 m1)) (newline)
; 5
; It would display (a b 0 1 2) <5>
(display "#5 should be...") (display (append m0 m1)) (newline)
; 6
; It would display (a b n (e s) t) <5>
(display "#6 should be...") (display (append m0 sub)) (newline)
(display "--------------------------") (newline)

; 2
(display "#2 work with null lists") (newline)
; 7
; It would display ()
(display "#7 should be... ") (display (list )) (newline)
; 8
; It would display ()
(display "#8 should be...") (display '()) (newline)
; 9
; It would display (())
(display "#9 should be...") (display (list '())) (newline)
; 10
; It would display (() (a b))
(display "#10 should be...") (display (list '() m0)) (newline)
; 11
; It would display (a b)
(display "#11 should be...") (display (append '() m0)) (newline)
; 12
; It would display (()())
(display "#12 should be...") (display (list '() '())) (newline)
; 13
; It would display ()
(display "#13 should be...") (display (append '() '())) (newline)
(display "------------------------------------") (newline)

;3
(display "#3 attach an atom to a list") (newline)
; 14 (12 a b)
(display (append (list atom) m0)) (newline)
; 15 (a b 12)
(display (append m0 (list atom))) (newline)
(display "-------------------------------------") (newline)

;4
(display "#4 acceptListParam") (newline)
(define acceptListParam
  (lambda (list)
     (car list)
    )) ; end of lambda and define
(display (acceptListParam '(first second third)))
(display "... should be first") (newline)
(display "----------------------------------") (newline)

;5
(display "#5 rev3") (newline)
(define rev3
  (lambda (list)
      (reverse list)
    )) ; end of lambda and define
(display (rev3 '(backward ran sentences)))
(display "...should be (sentences ran backward)") (newline)
(display "--------------------------------") (newline)

;6
(display "#6 palindrome3") (newline)
(define palindrome3
  (lambda (list)
    (display list)
    (append (reverse list))
    )) ; end of lambda and define
(display (palindrome3 '(will my love)))
(display "...should be (will my love love my will)") (newline)



