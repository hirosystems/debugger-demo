
;; foo

;; data maps and vars
;;
(define-data-var myVar int 0)

;; private functions
;;
(define-private (set-my-var (val int))
    (var-set myVar val)
)

;; public functions
;;
(define-read-only (add (a int) (b int))
    (+  a b)
)

(use-trait baz .baz.baz)

(define-public (hello (b <baz>))
  (begin
    (print (add 3 4))
    (print (set-my-var 7))
    (unwrap! (contract-call? .bar do-something (var-get myVar)) (err u100))
    (contract-call? b do-something 42)
  )
)