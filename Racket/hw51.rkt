; hw#51
; Yedoh Kang <kang.yedoh@gmail.com> period 06
; help from- Bermet Kalmakova

(define maxoflist_rebase
  (lambda (L)
    (if (= (length L) 0)
        0
        (if (>= (car L) (maxoflist_rebase (cdr L)))
                (car L)
                (maxoflist_rebase (cdr L))))))


(display (maxoflist_rebase '(2 3))) (newline)
(display (maxoflist_rebase '(3 2))) (newline)

; I preferred the first base case where the length 

  
  