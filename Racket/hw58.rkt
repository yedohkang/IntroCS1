#|  hw#58 numerical recursion 0
    "Yedoh Kang" <kang.yedoh@gmail.com>
    worked with #?
    help from #?

; 2 sumOfSquares
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To find the sum of the square of the integers between 0 and the
given argument, inclusive
size- number of integers, inclusive, 0~number

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
0 --> 0
1 --> 1
2 --> 5
3 --> 14

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: an integer


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer: an integer


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Mr. Brooks, a personification of the recursive sub problem, can
find the sum of the squares of one fewer than the given number

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
add the square of the given number and the sum of the squares of
the rest of the integers from 0 to number-1

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
0

2b.  How can you solve the base case for this problem?
0

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "2. sumOfSquares") (newline) (newline)
(define sumOfSquares 
  (lambda (number) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     number = ") (display number) (newline)
    (newline) 

    (if (not (= number 0))  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (+
         
         ; ... of handling the additional piece...
         (expt number 2)
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (sumOfSquares (- number 1))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (sumOfSquares 0 ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (sumOfSquares 1 ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (sumOfSquares 3 ))
(display " ...should be") (newline) 
(display "14") (newline)
(display "-----------------") (newline) (newline)
;--------------------------------------------------------

#|

; 1 ToH moves

--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To find the number of moves required to solve the Towers of Hanoi
puzzle for a given number of disks
size- number of disks given

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
0 --> 0
1 --> 1
2 --> 3
3 --> 7
4 --> 15

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: the number of disks


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer: a number


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Mr. Brooks, a personification of the recursive sub case, can
find the number of moves required to solve the Towers of Hanoi
puzzle for one less fewer given number of disks

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
add the number of moves required for the number of disks given
and the number of moves required for one fewer number of disks

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
0

2b.  How can you solve the base case for this problem?
0

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "1. ToH Moves") (newline)
(define ToH_moves 
  (lambda (disks) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     disks = ") (display disks) (newline)
    (newline) 

    (if (not (= disks 0))  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (+
         
         ; ... of handling the additional piece...
         1
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (* 2 (ToH_moves (- disks 1)))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (ToH_moves 0))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (ToH_moves 1 ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (ToH_moves 4 ))
(display " ...should be") (newline) 
(display "15") (newline)
(display "-----------------") (newline) (newline)
;--------------------------------------------------------     