;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Shopping problem using SGP
;;;; Author: Alex Moriarty & Alex Hagg 
;;;; Course: Planning & Scheduling
;;;; Due: Tuesday, 5 November 2013, 1900h

;;(defparameter *sgp-root-dir* (string "~/src/sgp/"))
;;(load (concatenate 'string *sgp-root-dir* "loader"))

(load "~/src/sgp/loader")
;; must also modify ~/src/sgp/loader to proper paths of files loaded.ß

(load-gp)
(in-package :sgp)
;;(defparameter *sgp-root-dir* (string "~/src/sgp/"))
;;(load (concatenate 'string *sgp-root-dir* "domains/bt.lisp"))
;; (load "~/src/sgp/domains/bt.lisp")


(in-package :domains)


(define (domain shopping-sgp) (:requirements :typing)
  (:action GO
	   :parameters (?start ?goal)
	   :precondition (and (location ?start) (location ?goal) (at ?start))
	   :effect (and (at ?goal) (not (at ?start))))
  
  (:action BUY
	   :parameters (?prod ?shop)
	   :precondition (and (location ?shop) (product ?prod) (at ?shop) (sells ?shop ?prod))
	   :effect (has ?prod))

)

(define (problem shopping-problem-sgp) (:domain shopping-sgp)
  ;;(:objects drill banana milk)
  (:init 
  	 (location home)(location hardware-store)(location super-market)
  	 (at home)
  	 (sells hardware-store drill)(sells super-market milk)(sells super-market banana))
  (:goal 
  	(and (has drill)(has milk)(has banana)(at home))
  )

)

(in-package :sgp)
(trace-gp contexts)
(plan 'shopping-problem-sgp)



(ext:exit)