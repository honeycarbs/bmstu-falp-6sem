(defun closest-even (x) 
    (if (evenp x)
        x
        (if (> x 0)
            (- x 1)
            (+ x 1))))

(defun greater (x) 
  (if (< x 0)
    (- x 1)
    (+ x 1)))

(defun pair (x y)
  (if (< x y)
    (list x y)
    (list y x)))

(defun is-between (f s th)
  (if (or 
      (and (> f s) (< f th))
      (and (> f th) (< f s)))
        t
        nil))
  
(defun is-between-if (f s th)
  (if (> f s)
    (if (< f th)
      t
      (if (< f s)
        (if (> f th)
          t
          nil)
        nil))
    (if (> f th)
      t)))

(defun is-betweenp(f s th)
  (or (and (> f s) (< f th)) (and (> f th) (< f s))))

(defun is-between-cond(f s th)
  (cond ((> f s) (cond ((< f th))
                        (t nil)))
         ((> f th) t)))



;; работоспособность оттестирована не полностью, use on your own risk
(defun how-alike (x y)
    (if (or (= x y) (equal x y))
        'the_same 
        (if (and (oddp x) (oddp y))
            'both_odd
            (if (and (evenp x) (evenp y))
            'both_even
            'difference))))
