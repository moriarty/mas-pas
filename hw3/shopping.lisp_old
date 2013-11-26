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

(define (domain shopping-sgp) (:requirements :typing )
  (:action GO
	   :parameters (?start ?goal)
	   :precondition (and (location ?start) (location ?goal) (at ?start))
	   :effect (and (at ?goal) (not (at ?start))))
  
  (:action BUY
	   :parameters (?prod ?shop)
	   :precondition (and (location ?shop) (product ?prod) (at ?shop) (sells ?shop ?prod))
	   :effect (has ?prod))

)

(define (problem shopping-problem-sgp) 
  (:domain shopping-sgp)
  (:objects drill banana milk home hardware-store supermarket)
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

;; NOTE: DOES NOTE WORK.
;; SGP is over 13 years old, following the README provided, the examples do not work
;; We believe this to be a issue with modern CLisp, and an incompatible old library.

;; Here is our error message when running example:
alex@A-MBP:.../sgp$ clisp
  i i i i i i i       ooooo    o        ooooooo   ooooo   ooooo
  I I I I I I I      8     8   8           8     8     o  8    8
  I  \ `+' /  I      8         8           8     8        8    8
   \  `-+-'  /       8         8           8      ooooo   8oooo
    `-__|__-'        8         8           8           8  8
        |            8     o   8           8     o     8  8
  ------+------       ooooo    8oooooo  ooo8ooo   ooooo   8

Welcome to GNU CLISP 2.49 (2010-07-07) <http://clisp.cons.org/>

Copyright (c) Bruno Haible, Michael Stoll 1992, 1993
Copyright (c) Bruno Haible, Marcus Daniels 1994-1997
Copyright (c) Bruno Haible, Pierpaolo Bernardi, Sam Steingold 1998
Copyright (c) Bruno Haible, Sam Steingold 1999-2000
Copyright (c) Sam Steingold, Bruno Haible 2001-2010

Type :h and hit Enter for context help.

[1]> (load "loader")
;; Loading file /Users/alex/src/sgp/loader.lisp ...
;; Loaded file /Users/alex/src/sgp/loader.lisp
T
[2]> (load-gp)
; Loading domains
;; Loading file /Users/alex/src/sgp/domains.fas ...
;; Loaded file /Users/alex/src/sgp/domains.fas
; Loading logic
;; Loading file /Users/alex/src/sgp/logic.fas ...
;; Loaded file /Users/alex/src/sgp/logic.fas
; Loading gp
;; Loading file /Users/alex/src/sgp/gp.lisp ...
;; Loaded file /Users/alex/src/sgp/gp.lisp
; Loading sgp
;; Loading file /Users/alex/src/sgp/sgp.lisp ...
;; Loaded file /Users/alex/src/sgp/sgp.lisp
NIL
[3]> (in-package :sgp)
#<PACKAGE SGP>
SGP[4]> (load "domains/bt.lisp")
;; Loading file domains/bt.lisp ...
;; Loaded file domains/bt.lisp
T
SGP[5]> (trace-gp contexts)
NIL
SGP[6]> (plan 'bt-2sa)
Using backtracking CSP solver
Using induced mutexes
5 contexts
Contexts:
--- 1 ---
     (OBJECT TOILET1)
     (OBJECT PKG5)
     (OBJECT PKG4)
     (OBJECT PKG3)
     (OBJECT PKG2)
     (OBJECT PKG1)
     (ODOR-OF-EXPLOSIVES PKG5)
     (NOT (ODOR-OF-EXPLOSIVES PKG4))
     (NOT (ODOR-OF-EXPLOSIVES PKG3))
     (NOT (ODOR-OF-EXPLOSIVES PKG2))
     (NOT (ODOR-OF-EXPLOSIVES PKG1))
     (METAL PKG5)
     (NOT (METAL PKG4))
     (NOT (METAL PKG3))
     (NOT (METAL PKG2))
     (NOT (METAL PKG1))
     (IN PKG5)
     (NOT (IN PKG1))
     (NOT (IN PKG2))
     (NOT (IN PKG3))
     (NOT (IN PKG4))
     (ARMED)
     (TOILET TOILET1)
     (NOT (CLOGGED TOILET1))
--- 2 ---
     (OBJECT TOILET1)
     (OBJECT PKG5)
     (OBJECT PKG4)
     (OBJECT PKG3)
     (OBJECT PKG2)
     (OBJECT PKG1)
     (NOT (ODOR-OF-EXPLOSIVES PKG5))
     (ODOR-OF-EXPLOSIVES PKG4)
     (NOT (ODOR-OF-EXPLOSIVES PKG3))
     (NOT (ODOR-OF-EXPLOSIVES PKG2))
     (NOT (ODOR-OF-EXPLOSIVES PKG1))
     (NOT (METAL PKG5))
     (METAL PKG4)
     (NOT (METAL PKG3))
     (NOT (METAL PKG2))
     (NOT (METAL PKG1))
     (NOT (IN PKG5))
     (IN PKG4)
     (NOT (IN PKG1))
     (NOT (IN PKG2))
     (NOT (IN PKG3))
     (ARMED)
     (TOILET TOILET1)
     (NOT (CLOGGED TOILET1))
--- 3 ---
     (OBJECT TOILET1)
     (OBJECT PKG5)
     (OBJECT PKG4)
     (OBJECT PKG3)
     (OBJECT PKG2)
     (OBJECT PKG1)
     (NOT (ODOR-OF-EXPLOSIVES PKG5))
     (NOT (ODOR-OF-EXPLOSIVES PKG4))
     (ODOR-OF-EXPLOSIVES PKG3)
     (NOT (ODOR-OF-EXPLOSIVES PKG2))
     (NOT (ODOR-OF-EXPLOSIVES PKG1))
     (NOT (METAL PKG5))
     (NOT (METAL PKG4))
     (METAL PKG3)
     (NOT (METAL PKG2))
     (NOT (METAL PKG1))
     (NOT (IN PKG5))
     (NOT (IN PKG4))
     (IN PKG3)
     (NOT (IN PKG1))
     (NOT (IN PKG2))
     (ARMED)
     (TOILET TOILET1)
     (NOT (CLOGGED TOILET1))
--- 4 ---
     (OBJECT TOILET1)
     (OBJECT PKG5)
     (OBJECT PKG4)
     (OBJECT PKG3)
     (OBJECT PKG2)
     (OBJECT PKG1)
     (NOT (ODOR-OF-EXPLOSIVES PKG5))
     (NOT (ODOR-OF-EXPLOSIVES PKG4))
     (NOT (ODOR-OF-EXPLOSIVES PKG3))
     (ODOR-OF-EXPLOSIVES PKG2)
     (NOT (ODOR-OF-EXPLOSIVES PKG1))
     (NOT (METAL PKG5))
     (NOT (METAL PKG4))
     (NOT (METAL PKG3))
     (METAL PKG2)
     (NOT (METAL PKG1))
     (NOT (IN PKG5))
     (NOT (IN PKG4))
     (NOT (IN PKG3))
     (IN PKG2)
     (NOT (IN PKG1))
     (ARMED)
     (TOILET TOILET1)
     (NOT (CLOGGED TOILET1))
--- 5 ---
     (OBJECT TOILET1)
     (OBJECT PKG5)
     (OBJECT PKG4)
     (OBJECT PKG3)
     (OBJECT PKG2)
     (OBJECT PKG1)
     (NOT (ODOR-OF-EXPLOSIVES PKG5))
     (NOT (ODOR-OF-EXPLOSIVES PKG4))
     (NOT (ODOR-OF-EXPLOSIVES PKG3))
     (NOT (ODOR-OF-EXPLOSIVES PKG2))
     (ODOR-OF-EXPLOSIVES PKG1)
     (NOT (METAL PKG5))
     (NOT (METAL PKG4))
     (NOT (METAL PKG3))
     (NOT (METAL PKG2))
     (METAL PKG1)
     (NOT (IN PKG5))
     (NOT (IN PKG4))
     (NOT (IN PKG3))
     (NOT (IN PKG2))
     (IN PKG1)
     (ARMED)
     (TOILET TOILET1)
     (NOT (CLOGGED TOILET1))

*** - THE: #:CLUSTER evaluated to the values ((OBJECT TOILET1)), not of type (VECTOR CLUSTER *)
The following restarts are available:
ABORT          :R1      Abort main loop
(ext:exit)
