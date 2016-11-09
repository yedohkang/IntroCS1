; 1 test#4 #2
(define f
  (lambda (a b c)
    (cond
      ((< (abs (- a b)) c (+ a b)) (- a))
      (else (+ b c)))))

;2 test#4 #4
(define DG
  (lambda (x)
    (not (or (< x 0) (integer? x)))))
(display (DG -5)) (newline)
(display (DG 0)) (newline)
(display (DG 5)) (newline)
