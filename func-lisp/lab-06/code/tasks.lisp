(defun mul-all(m lst)
    (mapcar #'(lambda (elem) (cond ((numberp elem)(* m elem))
                                   ((listp elem)(mul-all m elem))
                                   (t elem))) lst))

(defun subtract-dec(lst)
    (mapcar #'(lambda (elem) (cond ((numberp elem)(- elem 10))
                                   ((listp elem)(subtract-dec elem))
                                   (t elem))) lst))

(defun make-square(lst)
    (mapcar #'(lambda (elem) (* elem elem)) lst))

(defun select-between (lst left right)
    (sort (reduce #'(lambda (res el) (if (and (> el left) (< el right))
                                      (cons el res)
                                      res)) lst :initial-value ()) #'<))

;; (defun cartesain-prod (lst1 lst2)
;;     (if (and (endp lst1) (endp lst2))
;;         (list nil)
;;         (mapcan (lambda (inner)
;;                     (mapcar (lambda (outer) ()))))))

;; (print (mul-all 5 '(1 2 3 4 5)))
;; (print (mul-all 5 '(1 2 3 (4 5))))
;; (print (mul-all 5 '(1 a b 2 3 (4 5))))


;; (print (subtract-dec '(1 2 3 4 5)))
;; (print (subtract-dec '(1 2 3 (4 5))))
;; (print (subtract-dec '(1 a b 2 3 (4 5))))

;; ;; (defun )
;; (defun append-w-cons (lst)
;;     ()) 

(defvar lst1 '(a b c))
(defvar lst1 '(d e f))

(defun combinations(lst1 lst2)
    (mapcan #'(lambda (inner)
        (mapcar #'(lambda (outer)(list outer inner)) lst1)) lst2))


(defun inner-len(lists)
    (apply #'+ (mapcar #'(lambda (elem)(cond ((listp elem) (inner-len elem))
                                             (t 1))) lists)))
;; (defun inner-len(lsts)
;;     (apply '#+ (mapcar #' (lambda (elem)(cond ((listp elem) (inner-len elem)
;;                                                 t 1) )) lists)))

;; (defun inner-len(lists)
        ;; (map 'list #'(lambda (elem) (cond ((listp elem) ()
                                        ;;    (atom elem)  ()))) lists))

(print (inner-len '((1 2) (3 (4 5)) (6) () (7 8))))
;; (print(comb '(1 2 3 4) '(a b c d e f)))

;; (print (make-square '(1 2 3 4 5)))