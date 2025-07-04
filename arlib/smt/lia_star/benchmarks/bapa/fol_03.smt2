(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; (n + 3t + 1) / 2 = n - t

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))


(assert (not (= (+ (+ n (* 3 t)) 1) (* 2 (- n t)))))

(check-sat)