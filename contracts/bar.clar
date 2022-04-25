;; bar

(impl-trait .baz.baz)

;; data maps and vars
;;
(define-data-var myVar int 0)

;; private functions
;;
(define-private (max10 (val int))
    (if (> val 10) 10 val)
)

;; public functions
;;
(define-public (do-something (val int))
    (let ((prev (var-get myVar)))
        (var-set myVar (max10 val))
        (ok prev)
    )
)