;; title: Bitcoin-Yield-Optimization
;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant PROTOCOL-VERSION u1)
(define-constant MAX-PLATFORMS u5)
(define-constant BASE-ALLOCATION-PERCENTAGE u20)

;; Access Control Roles
(define-constant ROLE-ADMIN u1)
(define-constant ROLE-MANAGER u2)
(define-constant ROLE-USER u3)

;; Error Codes
(define-constant ERR-UNAUTHORIZED (err u100))
(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-PLATFORM-LIMIT-REACHED (err u102))
(define-constant ERR-INVALID-ALLOCATION (err u103))
(define-constant ERR-EMERGENCY-LOCK (err u104))

