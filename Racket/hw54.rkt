#|  hw#54
    "Yedoh Kang" <kang.yedoh@gmail.com>
    worked with #?
    help from #?

; 1 duplicate
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
to create a list that has two copies of each of the elements in a
given list
size- count of the elements

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'(1) ---> (1)
'(2 3) ---> (3 2)


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
to create a list that has two copies of each of the elements in
list -1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
to create a list that has two copies of each of the elements in
list -1
therefore, duplicate of the list minus the first element

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
null list

2b.  How can you solve the base case for this problem?
0

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "duplicate") (newline)
(define duplicate 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (= (length L) 0))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (list (car L) (car L))
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (duplicate (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (duplicate '() ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (duplicate '(1) ))
(display " ...should be (1 1)") (newline)
(display "-----------------") (newline) (newline)

;; cases requiring multiple recursive calls
(display (duplicate '(2 3 4) ))
(display " ...should be") (newline) 
(display "(2 2 3 3 4 4)") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------

; 2 copy ommitting odd
#|--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
to produce a list without all its odd integers
size- the elements of the list, whether even or odd

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'(1) --> ()
'(2) --> (2)
'(1 2 3) --> (2)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
to produce a list-1 of everything but odd integers

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
to produce a list-1 of everything but odd integers
therefore; finding copyommittingodd with cdr L

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the null list

2b.  How can you solve the base case for this problem?
()

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "copyOmittingOdd") (newline)
(define copyOmittingOdd 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (= (length L) 0))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (if (even? (car L))
             (list (car L))
             '())
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (copyOmittingOdd (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (copyOmittingOdd '() ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (copyOmittingOdd '(1) ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; cases requiring multiple recursive calls
(display (copyOmittingOdd '(1 2 3) ))
(display " ...should be") (newline) 
(display "(2)") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------

; 3 allButLast
#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
to produce a list with all but the last element
size- the length of the list

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'() --> ()
'(1) --> (1)
'(1 2 3) --> (1 2)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
a list containing all the elements of the list-1 without the last
element

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
a list containing all the elements of the list-1 without the last
element
therefore; allButLast to (cdr L)

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
a null list

2b.  How can you solve the base case for this problem?
()

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "allButLast") (newline)
(define allButLast
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (= (length L) 0))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (if (= (length L) 1)
             '()
             (list (car L))
             )
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (allButLast (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (allButLast '() ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (allButLast '(1) ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; cases requiring multiple recursive calls
(display (allButLast '(1 2 3) ))
(display " ...should be") (newline) 
(display "(1 2)") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------








