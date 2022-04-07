(defun get-fst-list(lst)
    (cond ((null lst) nil)
          ((listp (car lst)) (car lst))
          (t (get-fst-list (cdr lst)))))


(defun find-between(lst l r &optional (dump ()))
    (cond ((null lst) dump)
          (t (cond ((and (> (car lst) l) (< (car lst) r)) (find-between (cdr lst) l r (cons (car lst) dump)))
                   (t (find-between (cdr lst) l r dump))))))


;; ================================ (a) =================================
(defun multiply-numbers(lst m)
    (cond ((null lst) nil)
          (t (cons (* (car lst) m) (multiply-numbers (cdr lst) m)))))
;; ================================ (b) =================================
(defun multiply-objcts(lst m)
    (cond ((null lst) nil)
          ((numberp (car lst)) (cons (* (car lst) m) (multiply-objcts (cdr lst) m)))
          ((listp (car lst)) (cons (multiply-objcts (car lst) m) (multiply-objcts (cdr lst) m)))
          (t (cons (car lst) (multiply-objcts (cdr lst) m)))))

          
(defun select-between(lst l r &optional (dump ()))
    (sort (cond ((null lst) dump)
          (t (cond ((and (> (car lst) l) (< (car lst) r)) (select-between (cdr lst) l r (cons (car lst) dump)))
                   (t (select-between (cdr lst) l r dump))))) #'<))

;; ================================ (a) =================================
(defun rec-add-onelevel (lst &optional (acc 0))
  (cond ((null lst) acc)
        ((numberp (car lst)) (rec-add-onelevel (cdr lst) (+ acc (car lst))))
        (t (rec-add-onelevel (cdr lst) acc))))

;; ================================ (b) =================================
(defun rec-add-structured (lst &optional (acc 0))
  (cond ((null lst) acc)
        ((numberp (car lst)) (rec-add-structured (cdr lst) (+ acc (car lst))))
        ((listp (car lst)) (rec-add-structured (cdr lst) (rec-add-structured (car lst) acc)))
        (t (rec-add-structured (cdr lst) acc))))

(defun recnth(lst n &optional (acc 0))
    (cond ((< n 0) nil)
          ((null lst) nil)
          ((= acc n) (car lst))
          (t (recnth (cdr lst) n (+ 1 acc)))))

(defun allodd(lst)
    (cond ((null lst) t)
          ((oddp (car lst)) (allodd (cdr lst)))
          (t nil)))

(defun get-fst-odd(lst)
    (cond ((null lst) nil)
          ((listp (car lst)) (let ((fnd (get-fst-odd (car lst))))
                                 (if (not fnd)
                                        (get-fst-odd (cdr lst))
                                        fnd)))
          ((oddp (car lst)) (car lst))
          (t (get-fst-odd (cdr lst)))))

(defun get-squares (lst)
  (cond ((null lst) nil)
        (t (cons (* (car lst) (car lst)) (get-squares (cdr lst))))))

(defun my-reverse(lst &optional (acc ()))
    (cond ((null lst) acc)
          ((consp lst) (my-reverse (cdr lst) (cons (car lst) acc)))))


