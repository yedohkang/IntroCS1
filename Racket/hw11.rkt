(display "the answer is either ")
(newline)
(display 
 ( - (expt 5 2)
     (/ 4 (+ 2 2)))
 )
(display " or ")
(display (sqrt 1764))
(newline)
(newline)
(display "the answer is either")
(newline)
(/ (- (sqrt (- (expt 7.64 2) (* 4 2.71828 1.616))) 7.64)(*
                                                         2 2.71828))
(display "or")
(newline)
(/ (- (* -1 7.64) (sqrt (- (expt 7.64 2) (* 4 2.71828
                                            1.616)))) (* 2 2.71828))
(newline)
(newline)
(display "the answer is either")
(newline)
(/ (- (sqrt (- (expt 1.618 2) (* 4 -1 0.618 1.732))) 1.618)(*
                                                            2 -1 0.618))
(display "or")
(newline)
(/ (- (* -1 1.618) (sqrt (- (expt 1.618 2) (* 4 -1 0.618
                                              1.732)))) (* 2 -1 0.618))
(newline)
(newline)
(display "One root is")
(display
 (/ (- (sqrt (- (expt 1.618 2) (* 4 -1 0.618 1.732))) 1.618)(*
                                                             2 -1 0.618))
 )
(newline)
(display "The other root is")
(display
 (/ (- (* -1 1.618) (sqrt (- (expt 1.618 2) (* 4 -1 0.618
                                               1.732)))) (* 2 -1 0.618))
 )


