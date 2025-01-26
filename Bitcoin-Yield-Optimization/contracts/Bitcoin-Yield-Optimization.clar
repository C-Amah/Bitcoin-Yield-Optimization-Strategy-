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


;; State Variables
(define-data-var emergency-mode bool false)
(define-data-var total-locked-liquidity uint u0)
(define-data-var protocol-fee-percentage uint u2)

;; Platform Configuration
(define-map yield-platforms 
  { 
    platform-id: uint 
  }
  {
    name: (string-ascii 50),
    base-apy: uint,
    risk-score: uint,
    total-liquidity: uint,
    is-active: bool
  }
)

;; User Position Tracking
(define-map user-positions 
  { 
    user: principal 
  }
  {
    total-deposited: uint,
    current-yield: uint,
    last-deposit-time: uint,
    position-nft: uint
  }
)


