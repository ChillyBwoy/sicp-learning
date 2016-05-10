(define (sqrt x)
  (define (avg x y)
    (/ (+ x y) 2))

  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))

  (define (improve guess)
    (avg guess (/ x guess)))

  (define (sqrt-item guess)
    (if (good-enough? guess)
      guess
      (sqrt-item (improve guess))))
  (sqrt-item 1.0))


(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
