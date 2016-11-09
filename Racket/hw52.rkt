#|  hw#52
    Yedoh Kang <kang.yedoh@gmail.com>
    worked with #?
    help from Nicole Shin, Ethan Cheng
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
        to find the sum of all the elements in the list
        size- length of the list

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
        '(0) --> 0
        '(1 3) --> 4
        '(1 3 5 6) --> 15

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
        the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
        a number

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
        solve the sum of the list-1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
        ask him for the sum of the (list -1) and the first element of the list

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
         a list with one element

2b.  How can you solve the base case for this problem?
         the element itself

end of structuring questions
-------------------------------------------- |# 

; 3
(display "3. sum of list") (newline)(display "--") (newline)
(define sumoflist 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline) 
    
    (if (= (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for base case [2b]
        (car L)

        ; solution for recursive cases [1b]
        (+
         (car L)
         (sumoflist (cdr L))
         )  ; end of "solution for recursive cases"
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (sumoflist'(1) ))
(display " ...should be 1") (newline)
(display "--------------------") (newline) (newline)

; simple recursive case(s)
(display (sumoflist '(1 3) ))
(display " ...should be 4") (newline)
(display "--------------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (sumoflist '(1 3 5 7 11) ))
(display " ...should be 27") (newline) 
(display "-------------------") (newline) (newline)

; 4
#|
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
        to find the sum of all the even integers in the list
        size- length of the list

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
        '(0) --> 0
        '(1 3) --> 0
        '(2 4) --> 6
        '(1 3 5 6) --> 6

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
        the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
        an integer

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
        solve the sum of the even integers in the (list-1)

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
        ask him for the sum of the even integers in the (list -1)
              and the first even element of the list

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
         a list with one element

2b.  How can you solve the base case for this problem?
         the element itself

end of structuring questions 
-------------------------------------------- |#

(display "3. sumofevens") (newline)(display "--") (newline)
(define sumofevens
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline) 
    (if (= (length L) 1) ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for base case [2b]
        (if (even? (car L))
            (car L)
            0)

        ; solution for recursive cases [1b]
        (if (even? (car L))
            (+ (car L)(sumofevens (cdr L)))
            (sumofevens (cdr L))
         
       
         )  ; end of "solution for recursive cases"
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define



; tests  [0b]
;base case(s)
(display (sumofevens'(1) ))
(display " ...should be 0") (newline)
(display "--------------------") (newline) (newline)

; simple recursive case(s)
(display (sumofevens '(1 6) ))
(display " ...should be 6") (newline)
(display "--------------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (sumofevens '(1 3 5 7 11) ))
(display " ...should be 0") (newline) 
(display "-------------------") (newline) (newline)
