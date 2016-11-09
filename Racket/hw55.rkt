#|  hw#55
    "Yedoh Kang" <kang.yedoh@gmail.com>
    worked with #?
    help from #?

; 1 finish countAtoms
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
count the number of atoms in a given list, L, including any sub-lists
size- number of elements in L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'() ---> 0
'(1) ---> 1
'(1 2 3) --> 3
'((1 2) 3 (4 5)) ---> 5


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a number

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
count the number of atoms in a list of L-1 elements

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
ask him for the count of atoms in the list excluding the given
list's first element
add to that count of atoms in the first element of the given
list.
That element may be a sublist, in which case, ask Mr. Brooks
to count its atoms.

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
0

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "countAtoms") (newline)
(define countAtoms
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (+
         
         ; ... of handling the first element...
         (if (list? (car L))
             (countAtoms (car L))
             1)
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (countAtoms (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (countAtoms '() ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (countAtoms '(1) ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

;; cases requiring multiple recursive calls
(display (countAtoms '(1 2 3) ))
(display " ...should be") (newline) 
(display "3") (newline)
(display "-----------------") (newline) (newline)

;; cases requiring multiple recursive calls
(display (countAtoms '(1 (2 3) (4 5)) ))
(display " ...should be") (newline) 
(display "5") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------

; 2 countEvensDeep

#| --------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
count the even integers in a list of integers including sublists

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'() --> 0
'(1 2 3) --> 1
'(1 (3 6) 8) --> 2

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a number

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
count the even integers in a list with size-1 elements

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
count the even integers in a list with size-1 elements
similar to all the other even related codes

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
0

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "countEvensDeep") (newline) (newline)
(define countEvensDeep
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (+
         
         ; ... of handling the first element...
         (if (not (list? (car L)))
             (if (even? (car L))
                 1
                 0)
             (countEvensDeep (car L)))
                 
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (countEvensDeep (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (countEvensDeep '() ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (countEvensDeep '(1) ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (countEvensDeep '(2 3 (4 5) 6)) )
(display " ...should be") (newline) 
(display "3") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------



