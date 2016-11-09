; hw#44
; Yedoh Kang <kang.yedoh@gmail.com> period06

; 1
(define who? "man")
(define steps "1")
(define small
  (string-append
   "That's "
   steps
   " small step for a "
   who?)
  )
(display small) (newline)
(define giant
  (string-append
   steps
   " giant leap for "
   who? "kind" )
  )
(display giant) (newline)
;space
(define combo
  (lambda (x y)
    (string-append
     x
     "; "
     y
     "."
     )))
(display (combo small giant)) (newline)
(display "...should be That's 1 small step for a man;
1 giant leap for mankind.")
(newline) (newline)

; 2
; assemble the moves for solving Towers of Hanoi
(define (ToH disks source target spare)
  (display "    disks = ") (display disks) (newline)
  (display "    source = ") (display source) (newline)
  (display "    target = ") (display target) (newline)
  (display "    spare = ") (display spare) (newline)
  (newline)
  )
; tests
(display (ToH 0 1 2 3)) (newline)
(display "...should be ??") (newline)


  
  