(setf *random-state* (make-random-state t))

(defun dices-roll (edgen)
    (let* (
            (fdice (+ (random edgen) 1))
            (sdice (+ (random edgen) 1))
            (sum (+ fdice sdice)))
    (if (or (and (eq fdice 1) (eq sdice 1)) (and (eq fdice 6) (eq sdice 6)))
        (progn (format t "~%~a ~a - reroll chance! player rolls again... " fdice sdice) (setq sum (dices-roll edgen)))
        (progn (format t "~a ~a~%" fdice sdice) sum))))

(defun early-winp(score)
        (or (eq score 7) (eq score 11)))

(defun final-score (fp sp)
    (cond ((early-winp sp) (format t "player 2 scored ~a and won!~%" sp))
            ((> fp sp) (format t "player 1 won!~%"))
            ((> sp fp) (format t "player 2 won!~%"))
            (t (write-line "it's a draw!"))))

(defun play() 
    (let (
        (pl (progn (format t "player 1 rolls dices...") (dices-roll 6))))
        (if (early-winp pl)
            (format t "player 1 scored ~a and won!~%" pl)
            (final-score pl (progn (format t "player 2 rolls dices... ") (dices-roll 6))))))

(play)