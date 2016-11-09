; hw57 more sublists
; Yedoh Kang <kang.yedoh@gmail.com>
; help from Giorgio Vidali
; worked with

; 1 flatten [from question 0a]
(display "1. flatten") (newline)
(define flattenPrep
  (lambda (L)
    (append (car L) (cdr L))))
(define flatten 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (if (list? (car L))
             (flatten (car L))
             (list (car L))
             )
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (flatten (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (flatten '() ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (flatten '((1 2)) ))
(display " ...should be (1 2)") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (flatten '((1 2 3) 4 5) ))
(display " ...should be") (newline) 
(display "(1 2 3 4 5)") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------

#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Copy alternating elements from a list of even length, starting
with the first element
size- length of the list

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
'() ---> ()
'(1) --> (1)
'(1 2 3) --> (1 3)

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
copy alternating elements from a list of an even length that is
two elements shorter than the given list. The list he returns
starts with the first element of the list sent to him.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
combine the first element of the given list with what Mr. Brooks
produces for the list that is the given list without its first
element of the list sent to him.

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
the null list

end of structuring questions
-------------------------------------------- |# 

; #? What does the procedure do? [from question 0a]
(display "2. alternating") (newline)
(define alternating 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline) (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
        
        ; ... of handling the first element...
        (list (car L))
            ;end of handling the first element
            
            ; ...with whatever Mr. Brooks does with the rest of the list
            
                    (alternating (cddr L))
            
            )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (alternating '() ))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

;; simple recursive case(s)
(display (alternating '(1 3) ))
(display " ...should be (1)") (newline)
(display "-----------------") (newline) (newline)
;
;; cases requiring multiple recursive calls
(display (alternating '(1 3 5 7) ))
(display " ...should be") (newline) 
(display "(1 5)") (newline)
(display "-----------------") (newline) (newline)
;---------------------------------


