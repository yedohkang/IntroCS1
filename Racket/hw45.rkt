; hw#45
; Yedoh Kang <kang.yedoh@gmail.com> period06
; time started
; time ended

; 2
; assemble the moves for solving Towers of Hanoi
(define (ToH disks source target spare)
  (display "    disks = ") (display disks) (newline)
  (display "    source = ") (display source) (newline)
  (display "    target = ") (display target) (newline)
  (display "    spare = ") (display spare) (newline)
  (newline)
  (if (= disks 1)
      (string-append "Move top disk from " source " to " target)
      (string-append "Move top disk from " source " to " target ".
Move top disk from " source " to " spare ". Move top disk from "
                     target " to " spare ".")))

; tests
(display (ToH 1 "New York" "LA" "Washington DC")) (newline)
(display "... should be Move top drisk from New York to LA") (newline)
(display (ToH 2 "Berlin" "Paris " "Venice")) (newline)
(display "... should be Move top disk from Berlin to Paris. 
Move top disk from Berlin to Venice. Move top disk from Paris to Venice.")