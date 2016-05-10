(define (factorial1 n)
  (if (= n 1)
      1
      (* n (factorial1 (- n 1)))))


(define (factorial2 n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product) (+ counter 1))))
  (iter 1 1))


(define (factorial3 n)
  (define (iter product counter max-count)
    (if (> counter max-count)
        product
        (iter (* counter product) (+ counter 1) max-count)))
  (iter 1 1 n))


(factorial1 5)
(factorial1 10)

(factorial2 5)
(factorial2 10)

(factorial3 5)
(factorial3 10)
