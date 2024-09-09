#lang scheme

; AND function
(define (AND a b)
  (if (and (= a 1) (= b 1)) 1 0 ))

; OR function
(define (OR a b)
  (if (or (= a 1) (= b 1)) 1 0 ))

; XOR function
(define (XOR a b)
  (if (not (= a b)) 1 0 ))

;; sumbit of x b
(define (sum-bit x a b)
  (XOR ( XOR a b) x))

;;carry out of c
(define (carry-out x a b)
  (OR (AND a b)
     (OR (AND a x) (AND b x))))

; bitAdder x a b
(define (bitAdder x a b)
  (cons (sum-bit x a b) (carry-out x a b)))

;Testing bitAdder
(display (bitAdder 0 0 0))  ;(0 . 0)
(newline)
(display (bitAdder 0 0 1))  ;(1 . 0)
(newline)
(display (bitAdder 0 1 0))  ;(1 . 0)
(newline)
(display (bitAdder 0 1 1))  ;(0 . 1)
(newline)
(display (bitAdder 1 0 0))  ;(1 . 0)
(newline)
(display (bitAdder 1 0 1))  ;(0 . 1)
(newline)
(display (bitAdder 1 1 0))  ;(0 . 1)
(newline)
(display (bitAdder 1 1 1))  ;(1 . 1)
(newline)
