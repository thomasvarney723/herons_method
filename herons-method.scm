(define (sqrt number guess tolerance)    

    (define (average2 x y) 
      (/ (+ x y) 2))

    (define (abs x) 
      (if (< x 0)
        (- x)
        x))

    (define (difference x y) 
      (abs (- x y)))

    (define (improve-guess guess number) 
      (average2 guess (/ number guess)))

    (define (keep-improving guess number tolerance)  
      (if (> tolerance (difference guess (improve-guess guess number)))
	  guess
	  (keep-improving (improve-guess guess number) number tolerance)))

    (keep-improving guess number tolerance))
