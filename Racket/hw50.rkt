#|  hw#50
    Yedoh Kang <kang.yedoh@gmail.com> period06
    help from Ethan Cheng, Benjamin Shen, Bermet Kalmakova

--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the largest number in the given list, L.
size = length of L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(maxOfList '(3)) --> 3
(maxOfList '(3 -1.4)) --> 3


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
Find the largest number in a list of length (size - 1)

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Ask him for the largest number in the last (size-1) elements.
Calculate the larger of his answer and
the first element of the list.

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
a list with only 1 element

2b.  How can you solve the base case for this problem?
return the element from the list

end of structuring questions
-------------------------------------------- |# 



(define maxoflist
  (lambda (L)
    (if (= (length L) 1)
        (car L)
        (if (>= (car L) (maxoflist (cdr L)))
            (car L)
            (maxoflist (cdr L))))))

(display (maxoflist '(0 3 2 7 8)))
(display "\n")
(display (maxoflist '(1 9 2 3 13 5 4 10)))
(display "\n")
(display (maxoflist '(10 5 8 1 2)))