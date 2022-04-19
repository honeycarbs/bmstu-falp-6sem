(defun set-equal (set1 set2)
  (and (= (length set1) (length set2))
       (every #'(lambda (elem) (member elem set2 :test #'equal)) 
                 set1)
       (every #'(lambda (elem) (member elem set1 :test #'equal)) 
                 set2)))

(defvar countr '(sweden switzerland ukraine canada))
(defvar captl '(stockholm bern kiev ottawa))


(defun make-table (cntrs captls &optional tbl)
    (if (or (null cntrs) (null captls))
        tbl
        (make-table (cdr cntrs) (cdr captls) (cons (cons (car cntrs) (car captls)) tbl))))

(defun search-country (captl table)
  (cond ((null table) nil)
        ((eq captl (cdar table)) (caar table))
        (t (search-country captl (cdr table)))))

(defun search-country-rassoc (captl table)
  (car (rassoc captl table)))

(defun search-capital-assoc (cntry table)
  (cdr (assoc cntry table)))


;; (defvar table(make-table countr captl))
;; (print (search-country-rassoc 'kiev table))
;; (print (search-capital-assoc 'ukraine table))



;; (defun search-capital (cntry table)
;;   (cond ((null table) nil)
;;         ((eq cntry (caar table)) (cdar table))
;;         (t (search-capital cntry (cdr table)))))

;; ;; (print (search-capital 'ukraine table))

;; (defun swap-first-last (lst)
;;   (let* ((tmp (reverse (cdr lst)))
;;          (mid (reverse (cdr tmp))))
;;         (cons (car tmp) (append mid (list (car lst))))))

;; ;; (print (swap-first-last '(1 2 3 4)))
;; ;; (print (swap-first-last '(1 2 3 4)))

;; (defun swap-two-elements(lst i j) 
;;   (if (or (> i (length lst)) (> j (length lst)))
;;     lst
;;     (let ((fst (nth i lst))
;;           (snd (nth j lst)))
;;          (progn (setf (nth i lst) snd) (setf (nth j lst) fst) lst))))

;; ;; (print (swap-two-elements '(1 2 3 4) 2 0))

;; (defvar lst '(1 2 3 4 5))

;; (defun shift-to-left(lst)
;;   (let* ((tmp (cdr lst))
;;          (fnl (car lst)))
;;         (append tmp (list fnl))))

;; (defun shift-to-right(lst)
;;   (let* ((tmp (reverse (cdr (reverse lst))))
;;          (fnl (car (reverse lst))))
;;         (cons fnl tmp)))

;; ;; (a)
;; (defun multiply-lst-num (lst mul)
;;     (mapcar #'(lambda (elem) (* elem mul)) lst))

;; ;; (b)
;; (defun multiply-lst (lst mul)
;;     (mapcar #'(lambda (elem) (cond ((listp elem) (multiply-lst elem mul))
;;                                    ((numberp elem) (* elem mul))
;;                                    (t elem)))
;;                               lst))

;; (defun add-list(src dest)
;;   (if (some #'(lambda (pair) (equal dest pair)) src)
;;       src
;;       (append src (list dest))))


;; (defun select-between (lst left right)
;;     (sort (reduce #'(lambda (res el) (if (and (> el left) (< el right))
;;                                       (cons el res)
;;                                       res)) lst :initial-value ()) #'<))

;; (print (select-between '(1 2 3 4 5 6 7 3 4 5 3) 2 7))
;; (defvar src '(a b))
;; (defvar dest '(b a))

;; (print (or (equal (car dest) (cadr src))  (equal (car dest) (car src))))
;; (print (or (equal (cadr dest) (cadr src)) (equal (cadr dest) (car src))))
;; (print (equal (cadr dest) (car src)))


;; (print (car '(1 2)))
;; (print (cadr '(1 2)))

;; (print (shift-to-right lst))
;; (print (shift-to-left lst))
;; (print (multiply-lst-num lst 5))
;; (print (multiply-lst '(5 f '(a b c 40 57) 7 8) 5))
;; (print(make-swap-two-els '(1 2 3 4 5) 1 4))




;; (first-last '(1))