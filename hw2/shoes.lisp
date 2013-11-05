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

(define (domain shoes-domain)
  
  ;; Put Sock on foot f
  (:operator PUTSOCK
      :parameters (?f)
      :precondition (:and (foot ?f) (:not (on ?f shoe)) (:not (on ?f sock)))
      :effect (on ?f sock))
  ;; Put Shoe on foot f
  (:operator PUTSHOE
      :parameters (?f)
      :precondition (:and (foot ?f) (on ?f sock) (:not (on ?f shoe)))
      :effect (on ?f shoe))
  ;; Remove Shoe from foot f
  (:operator RMSHOE
      :parameters (?f)
      :precondition (:and (foot ?f) (on ?f shoe))
      :effect (:not (on ?f shoe)))
  ;; Remove Sock from foot f
  (:operator RMSOCK
      :parameters (foot ?f)
      :precondition (:and (on ?f sock))
      :effect (:not (on ?f sock)))

  (:operator CHECK
      :parameters (foot ?f)
      :precondition (:and  
                          (on ?f shock) 
                          (on ?f shoe))
      :effect (proper ?f shoe)))

(define (problem shoes-example)
    :domain 'shoes-domain
    :inits ((foot left)
           (foot right)
           (found shoes)     
           (found socks)
           (:not (proper right shoe))
           (:not (proper left shoe))
           (:not (on left shoe))
           (:not (on right shoe))
           (:not (on left sock))
           (:not (on right sock)))
    :goal (:and (on right shoe) (on left shoe)))


(define (problem shoes-example-2)
    :domain 'shoes-domain
    :inits ((foot left)
           (foot right)
           (found shoes)
           (found socks)
           (:not (proper right shoe))
           (:not (proper left shoe))
           (on left shoe)
           (:not (on right shoe))
           (:not (on left sock))
           (:not (on right sock)))
    :goal (:and (proper right shoe) (proper left shoe)))

(print "calling bf-control shoes-example")
(bf-control 'shoes-example-2)
