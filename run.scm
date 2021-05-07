(load "merge-sort")

(define n (string->number (car (command-line-arguments))))
(display n)
(newline)

;;; integers
(display "integers")
(newline)

(define integers (random-list n random-integer))
(cond ((<= n 50) (display integers) (newline)))
(display (sorted? integers <=))
(newline)

(display "ascending integers")
(newline)

(define t1 (real-time-clock))
(define sorted-integers (merge-sort integers <))
(define t2 (real-time-clock))

(cond ((<= n 50) (display sorted-integers) (newline)))
(display (sorted? sorted-integers <=))
(newline)

(display "elapsed time = ")
(display (internal-time/ticks->seconds (- t2 t1)))
(newline)

(display "descending integers")
(newline)

(define t1 (real-time-clock))
(define sorted-integers (merge-sort integers >))
(define t2 (real-time-clock))

(cond ((<= n 50) (display sorted-integers) (newline)))
(display (sorted? sorted-integers <=))
(newline)

(display "elapsed time = ")
(display (internal-time/ticks->seconds (- t2 t1)))
(newline)

;; reals
(display "reals")
(newline)

(define reals (random-list n random-real))
(cond ((<= n 50) (display reals) (newline)))
(display (sorted? reals <=))
(newline)

(display "ascending reals")
(newline)

(define t1 (real-time-clock))
(define sorted-reals (merge-sort reals <))
(define t2 (real-time-clock))

(cond ((<= n 50) (display sorted-reals) (newline)))
(display (sorted? sorted-reals <=))
(newline)

(display "elapsed time = ")
(display (internal-time/ticks->seconds (- t2 t1)))
(newline)

(display "descending reals")
(newline)

(define t1 (real-time-clock))
(define sorted-reals (merge-sort reals >))
(define t2 (real-time-clock))

(cond ((<= n 50) (display sorted-reals) (newline)))
(display (sorted? sorted-reals >=))
(newline)

(display "elapsed time = ")
(display (internal-time/ticks->seconds (- t2 t1)))
(newline)

;;; strings
