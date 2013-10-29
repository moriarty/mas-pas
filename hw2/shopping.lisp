;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Shopping problem using UCPOP
;;;; Author: Alex Moriarty & Alex Hagg 
;;;; Course: Planning & Scheduling
;;;; Due: Tuesday, 29 October 2013, 1900h

;; Load the required libraries and change package
;; This prints a bunch of crap which we send to /dev/null

(defparameter *ucpop-root-dir* (string "~/src/ucpop/"))

(with-open-file (*standard-output* "/dev/null" :direction :output
    :if-exists :supersede)
    (load (concatenate 'string *ucpop-root-dir* "loader"))
    (load-ucpop)
    (in-package ucpop))

(define (domain shopping-domain)
  
  ;; Go from location l to m
  (:operator GO
      :parameters (?l ?m)
      :precondition (at shopper ?l)
      :effect (:and (at shopper ?m) (:not (at shopper ?m))))
  ;; Buy product p from shop s
  (:operator BUY
      :parameters (?p ?s)
      :precondition (:and (at shopper ?s) (sells ?s ?p))
      :effect (has shopper ?p)))

(define (problem shopping-example)
    :domain 'shopping-domain
    :inits ((location home)(location hardware-store)(location super-market)
      (at shopper home)(at drill hardware-store)(at milk super-market)(at banana super-market)
      (sells hardware-store drill)(sells super-market milk)(sells super-market banana))
    :goal (:and (has shopper drill)(has shopper milk)(has shopper banana)(at shopper home)))

(bf-control 'shopping-example)
