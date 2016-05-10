(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (larger-then x y)
  (if (> x y) x y))

(define (sum-of-two-largest-squares x y z)
  (if (= x (larger-then x y))
    (sum-of-squares x (larger-then y z))
    (sum-of-squares y (larger-then x z))))

(sum-of-two-largest-squares 4 5 6)
