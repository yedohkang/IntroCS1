#|  hw#59
    "Yedoh Kang" <kang.yedoh@gmail.com>
    worked with #?
    help from #?

* didn't write down answers to the structuring questions, but
answered them mentally
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?


0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer:


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer:


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".


1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?


2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.


2b.  How can you solve the base case for this problem?


end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "1. Fib") (newline)
(define Fib 
  (lambda (m) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     m = ") (display m) (newline)
    (newline) 

    (if (= m 1)  ; Choose between base case(s) vs. recursive cases [2a]
        1
        (if (= m 2)
            1
            (+ (Fib (- m 2)) (Fib (- m 1)))

        ;end of "Choose between base case(s) vs. recursive cases"
    )))) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (Fib 1))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)
;base case(s)
(display (Fib 2))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (Fib 3 ))
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (Fib 5 ))
(display " ...should be") (newline) 
(display "5") (newline)
(display "-----------------") (newline) (newline)
;--------------------------------------------------------

#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?


0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer:


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer:


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".


1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?


2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.


2b.  How can you solve the base case for this problem?


end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "2. factorial") (newline)
(define factorial 
  (lambda (n) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     n = ") (display n) (newline)
    (newline) 

    (if (not (or (= n 1) (= n 0)))  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (*
         
         ; ... of handling the additional piece...
         n
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (factorial (- n 1))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        1
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (factorial 0))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)
;base case(s)
(display (factorial 1))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (factorial 2 ))
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (factorial 3 ))
(display " ...should be") (newline) 
(display "6") (newline)
(display "-----------------") (newline) (newline)
;--------------------------------------------------------
