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
(load "~/src/sgp/domains/bt.lisp")

(trace-gp contexts)
(plan 'bt-2sa)
(exit)